import 'dart:convert';

import 'package:book_app/data/entity/book/entity.dart';
import 'package:book_app/data/entity/openbd/openbd_response.dart';
import 'package:book_app/instance/dio.dart';
import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:xml2json/xml2json.dart';

part 'provider.g.dart';

@riverpod
BookApi books(Ref ref) {
  final api = ApiClient();
  return BookApi(api: api);
}

class BookApi {
  BookApi({required ApiClient api}) : _api = api;

  final ApiClient _api;
  final _xml2json = Xml2Json();

  Future<List<BookEntity>> getBooks({required String query}) async {
    final xmlString =
        await _api.get('api/opensearch?title=$query&cnt=500') as String;

    final recordList = _parseXmlResponse(xmlString);
    final entities = await Future.wait(
      recordList.map((record) => _parseRecord(record)),
    );

    // ISBNまたはthumbnailUrlがnullのものを除外
    print(entities);
    return entities
        .whereType<BookEntity>()
        .where(
          (e) =>
              e.isbn != null &&
              e.thumbnailUrl != null &&
              e.thumbnailUrl!.isNotEmpty,
        )
        .toList();
  }

  List<dynamic> _parseXmlResponse(String xmlString) {
    _xml2json.parse(xmlString);
    final jsonString = _xml2json.toBadgerfish();
    final jsonData = json.decode(jsonString) as Map<String, dynamic>;

    // OpenSearch RSS形式のレスポンス
    final rss = jsonData['rss'] as Map<String, dynamic>?;
    final channel = rss?['channel'] as Map<String, dynamic>?;
    final items = channel?['item'];

    if (items == null) return [];
    if (items is List) return items;
    if (items is Map) return [items];
    return [];
  }

  Future<BookEntity?> _parseRecord(dynamic item) async {
    try {
      if (item is! Map<String, dynamic>) return null;

      // Badgerfish形式のitemから直接データを取得
      return await _createBookEntityFromItem(item);
    } catch (e) {
      return null;
    }
  }

  Future<BookEntity> _createBookEntityFromItem(
    Map<String, dynamic> item,
  ) async {
    // Badgerfish形式から値を取得
    String getBadgerfishValue(dynamic value) {
      if (value == null) return '';
      if (value is Map) {
        final text = value['\$'];
        if (text is String) return text.trim();
        if (text is List && text.isNotEmpty) {
          return text.first.toString().trim();
        }
      }
      if (value is List && value.isNotEmpty) {
        final first = value.first;
        if (first is Map) {
          final text = first['\$'];
          if (text != null) return text.toString().trim();
        }
        return first.toString().trim();
      }
      if (value is String) return value.trim();
      return '';
    }

    final title = getBadgerfishValue(item['title']);
    final author = getBadgerfishValue(item['dc:creator']);
    final date = getBadgerfishValue(item['dcterms:issued']);

    // dc:identifierからISBNを抽出
    final identifier = _extractIdentifierFromItem(item);

    // OpenBD APIから説明文を取得
    String? description;
    if (identifier != null) {
      description = await _fetchDescriptionFromOpenBD(identifier);
    }

    // 書影URLを取得（NDLを優先、なければOpenBD APIを試す）
    String? thumbnailUrl;
    if (identifier != null) {
      // まずNDLのサムネイルURLを確認
      final ndlUrl = 'https://ndlsearch.ndl.go.jp/thumbnail/$identifier.jpg';
      final isValid = await _isValidImageUrl(ndlUrl);
      if (isValid) {
        thumbnailUrl = ndlUrl;
      }

      // NDLで取得できなかった場合、OpenBD APIから取得を試みる
      if (thumbnailUrl == null) {
        thumbnailUrl = await _fetchCoverUrlFromOpenBD(identifier);
      }
    }
    print(description);
    return BookEntity(
      title: title.isNotEmpty ? title : 'No Title',
      author: author.isNotEmpty ? author : 'Unknown Author',
      publicationDate: date,
      isbn: identifier,
      description: description,
      thumbnailUrl: thumbnailUrl,
    );
  }

  Future<OpenBDResponse?> _fetchFromOpenBD(String isbn) async {
    try {
      final openBdClient = ApiClient(
        dio: Dio(
          BaseOptions(
            baseUrl: 'https://api.openbd.jp',
            connectTimeout: const Duration(seconds: 3),
            receiveTimeout: const Duration(seconds: 5),
          ),
        ),
      );

      final response = await openBdClient.get('/v1/get', query: {'isbn': isbn});
      if (response is List && response.isNotEmpty && response[0] != null) {
        final bookData = response[0] as Map<String, dynamic>;
        return OpenBDResponse.fromJson(bookData);
      }
    } catch (e) {
      // エラー時はnullを返す
    }
    return null;
  }

  Future<String?> _fetchCoverUrlFromOpenBD(String isbn) async {
    final data = await _fetchFromOpenBD(isbn);
    return data?.summary?.cover;
  }

  Future<String?> _fetchDescriptionFromOpenBD(String isbn) async {
    final data = await _fetchFromOpenBD(isbn);
    if (data == null) return null;

    // 優先順位: onix.CollateralDetail.TextContent > hanmoto.maegakinado
    final textContents = data.onix?.CollateralDetail?.TextContent;
    if (textContents != null && textContents.isNotEmpty) {
      // 最も長い説明文を選択
      String? longestText;
      int maxLength = 0;
      for (final content in textContents) {
        final text = content.Text;
        if (text != null && text.length > maxLength) {
          longestText = text;
          maxLength = text.length;
        }
      }
      if (longestText != null) return longestText;
    }

    // フォールバック: hanmoto.maegakinado
    return data.hanmoto?.maegakinado;
  }

  Future<bool> _isValidImageUrl(String url) async {
    try {
      final dio = Dio();
      final response = await dio.head(
        url,
        options: Options(
          validateStatus: (status) => status != null && status < 500,
          receiveTimeout: const Duration(seconds: 3),
          sendTimeout: const Duration(seconds: 3),
        ),
      );
      return response.statusCode == 200;
    } catch (e) {
      return false;
    }
  }

  String? _extractIdentifierFromItem(Map<String, dynamic> item) {
    final identifiers = item['dc:identifier'];

    if (identifiers == null) return null;

    // 単一または複数のidentifierを処理
    final List<dynamic> identifierList;
    if (identifiers is List) {
      identifierList = identifiers;
    } else {
      identifierList = [identifiers];
    }

    for (final id in identifierList) {
      String? text;
      if (id is Map) {
        final value = id['\$'];
        if (value is String) text = value;
      } else if (id is String) {
        text = id;
      }

      if (text == null) continue;

      text = text.trim();

      // JP-eコードを探す
      if (text.startsWith('urn:jp-e:')) {
        return text.substring(9);
      }

      // ISBNを探す
      final cleanText = text.replaceAll('-', '');
      if (RegExp(r'^\d{10}(\d{3})?$').hasMatch(cleanText)) {
        return cleanText;
      }
    }

    return null;
  }
}

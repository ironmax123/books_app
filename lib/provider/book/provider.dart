import 'dart:convert';

import 'package:book_app/data/entity/book/entity.dart';
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
    final xmlString = await _api.get('api/opensearch?title=$query') as String;

    final recordList = _parseXmlResponse(xmlString);
    final entities = await Future.wait(
      recordList.map((record) => _parseRecord(record)),
    );

    // ISBNがnullのものを除外
    return entities
        .whereType<BookEntity>()
        .where((e) => e.isbn != null)
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
    final description = getBadgerfishValue(item['description']);

    // dc:identifierからISBNを抽出
    final identifier = _extractIdentifierFromItem(item);

    // 書影URLを取得（OpenBD APIとNDLの両方を試す）
    String? thumbnailUrl;
    if (identifier != null) {
      // まずOpenBD APIから取得を試みる
      thumbnailUrl = await _fetchCoverUrlFromOpenBD(identifier);

      // OpenBDで取得できなかった場合、NDLのサムネイルURLを使用
      thumbnailUrl ??= 'https://ndlsearch.ndl.go.jp/thumbnail/$identifier.jpg';
    }

    return BookEntity(
      title: title.isNotEmpty ? title : 'No Title',
      author: author.isNotEmpty ? author : 'Unknown Author',
      publicationDate: date,
      isbn: identifier,
      description: description,
      thumbnailUrl: thumbnailUrl,
    );
  }

  Future<String?> _fetchCoverUrlFromOpenBD(String isbn) async {
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
        final bookData = response[0] as Map<String, dynamic>?;
        final summary = bookData?['summary'] as Map<String, dynamic>?;
        final coverUrl = summary?['cover'] as String?;

        // coverUrlが有効な場合のみ返す
        if (coverUrl != null && coverUrl.isNotEmpty) {
          return coverUrl;
        }
      }
    } catch (e) {
      // エラー時はnullを返してNDLのフォールバックを使う
    }
    return null;
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

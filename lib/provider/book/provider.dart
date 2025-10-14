import 'dart:convert';

import 'package:book_app/instance/dio.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:xml2json/xml2json.dart';

part 'provider.g.dart';

@riverpod
BookApi bookApi(Ref ref) {
  final api = ApiClient();
  return BookApi(api: api);
}

class BookApi {
  BookApi({required ApiClient api}) : _api = api;

  final ApiClient _api;
  final _xml2json = Xml2Json();

  Future<void> getBooks({required String query}) async {
    final xmlString =
        await _api.get(
              'api/sru?operation=searchRetrieve&maximumRecords=10&query=title=$query',
            )
            as String;

    _xml2json.parse(xmlString);
    final jsonString = _xml2json.toParker();
    final jsonData = json.decode(jsonString) as Map<String, dynamic>;

    print(json.encode(jsonData));
  }
}

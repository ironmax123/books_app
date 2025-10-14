import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class BookApiResponse with _$BookApiResponse {
  const factory BookApiResponse({
    @JsonKey(name: 'searchRetrieveResponse') SearchRetrieveResponse? searchRetrieveResponse,
  }) = _BookApiResponse;

  factory BookApiResponse.fromJson(Map<String, dynamic> json) =>
      _$BookApiResponseFromJson(json);
}

@freezed
class SearchRetrieveResponse with _$SearchRetrieveResponse {
  const factory SearchRetrieveResponse({
    @JsonKey(name: 'numberOfRecords') String? numberOfRecords,
    @JsonKey(name: 'records') Records? records,
  }) = _SearchRetrieveResponse;

  factory SearchRetrieveResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchRetrieveResponseFromJson(json);
}

@freezed
class Records with _$Records {
  const factory Records({
    @JsonKey(name: 'record') dynamic record,
  }) = _Records;

  factory Records.fromJson(Map<String, dynamic> json) =>
      _$RecordsFromJson(json);
}

@freezed
class Record with _$Record {
  const factory Record({
    @JsonKey(name: 'recordData') RecordData? recordData,
  }) = _Record;

  factory Record.fromJson(Map<String, dynamic> json) =>
      _$RecordFromJson(json);
}

@freezed
class RecordData with _$RecordData {
  const factory RecordData({
    @JsonKey(name: 'srw_dc:dc') DublinCore? dc,
  }) = _RecordData;

  factory RecordData.fromJson(Map<String, dynamic> json) =>
      _$RecordDataFromJson(json);
}

@freezed
class DublinCore with _$DublinCore {
  const factory DublinCore({
    @JsonKey(name: 'dc:title') dynamic title,
    @JsonKey(name: 'dc:creator') dynamic creator,
    @JsonKey(name: 'dc:publisher') dynamic publisher,
    @JsonKey(name: 'dc:date') dynamic date,
    @JsonKey(name: 'dc:identifier') dynamic identifier,
    @JsonKey(name: 'dc:description') dynamic description,
  }) = _DublinCore;

  factory DublinCore.fromJson(Map<String, dynamic> json) =>
      _$DublinCoreFromJson(json);
}
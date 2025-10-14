// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookApiResponseImpl _$$BookApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BookApiResponseImpl(
      searchRetrieveResponse: json['searchRetrieveResponse'] == null
          ? null
          : SearchRetrieveResponse.fromJson(
              json['searchRetrieveResponse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BookApiResponseImplToJson(
        _$BookApiResponseImpl instance) =>
    <String, dynamic>{
      'searchRetrieveResponse': instance.searchRetrieveResponse,
    };

_$SearchRetrieveResponseImpl _$$SearchRetrieveResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchRetrieveResponseImpl(
      numberOfRecords: json['numberOfRecords'] as String?,
      records: json['records'] == null
          ? null
          : Records.fromJson(json['records'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchRetrieveResponseImplToJson(
        _$SearchRetrieveResponseImpl instance) =>
    <String, dynamic>{
      'numberOfRecords': instance.numberOfRecords,
      'records': instance.records,
    };

_$RecordsImpl _$$RecordsImplFromJson(Map<String, dynamic> json) =>
    _$RecordsImpl(
      record: json['record'],
    );

Map<String, dynamic> _$$RecordsImplToJson(_$RecordsImpl instance) =>
    <String, dynamic>{
      'record': instance.record,
    };

_$RecordImpl _$$RecordImplFromJson(Map<String, dynamic> json) => _$RecordImpl(
      recordData: json['recordData'] == null
          ? null
          : RecordData.fromJson(json['recordData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RecordImplToJson(_$RecordImpl instance) =>
    <String, dynamic>{
      'recordData': instance.recordData,
    };

_$RecordDataImpl _$$RecordDataImplFromJson(Map<String, dynamic> json) =>
    _$RecordDataImpl(
      dc: json['srw_dc:dc'] == null
          ? null
          : DublinCore.fromJson(json['srw_dc:dc'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RecordDataImplToJson(_$RecordDataImpl instance) =>
    <String, dynamic>{
      'srw_dc:dc': instance.dc,
    };

_$DublinCoreImpl _$$DublinCoreImplFromJson(Map<String, dynamic> json) =>
    _$DublinCoreImpl(
      title: json['dc:title'],
      creator: json['dc:creator'],
      publisher: json['dc:publisher'],
      date: json['dc:date'],
      identifier: json['dc:identifier'],
      description: json['dc:description'],
    );

Map<String, dynamic> _$$DublinCoreImplToJson(_$DublinCoreImpl instance) =>
    <String, dynamic>{
      'dc:title': instance.title,
      'dc:creator': instance.creator,
      'dc:publisher': instance.publisher,
      'dc:date': instance.date,
      'dc:identifier': instance.identifier,
      'dc:description': instance.description,
    };

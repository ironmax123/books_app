// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'openbd_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OpenBDResponseImpl _$$OpenBDResponseImplFromJson(Map<String, dynamic> json) =>
    _$OpenBDResponseImpl(
      summary: json['summary'] == null
          ? null
          : OpenBDSummary.fromJson(json['summary'] as Map<String, dynamic>),
      onix: json['onix'] == null
          ? null
          : OpenBDOnix.fromJson(json['onix'] as Map<String, dynamic>),
      hanmoto: json['hanmoto'] == null
          ? null
          : OpenBDHanmoto.fromJson(json['hanmoto'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OpenBDResponseImplToJson(
        _$OpenBDResponseImpl instance) =>
    <String, dynamic>{
      'summary': instance.summary,
      'onix': instance.onix,
      'hanmoto': instance.hanmoto,
    };

_$OpenBDSummaryImpl _$$OpenBDSummaryImplFromJson(Map<String, dynamic> json) =>
    _$OpenBDSummaryImpl(
      cover: json['cover'] as String?,
      isbn: json['isbn'] as String?,
      title: json['title'] as String?,
      author: json['author'] as String?,
      publisher: json['publisher'] as String?,
    );

Map<String, dynamic> _$$OpenBDSummaryImplToJson(_$OpenBDSummaryImpl instance) =>
    <String, dynamic>{
      'cover': instance.cover,
      'isbn': instance.isbn,
      'title': instance.title,
      'author': instance.author,
      'publisher': instance.publisher,
    };

_$OpenBDOnixImpl _$$OpenBDOnixImplFromJson(Map<String, dynamic> json) =>
    _$OpenBDOnixImpl(
      CollateralDetail: json['CollateralDetail'] == null
          ? null
          : OpenBDCollateralDetail.fromJson(
              json['CollateralDetail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OpenBDOnixImplToJson(_$OpenBDOnixImpl instance) =>
    <String, dynamic>{
      'CollateralDetail': instance.CollateralDetail,
    };

_$OpenBDCollateralDetailImpl _$$OpenBDCollateralDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenBDCollateralDetailImpl(
      TextContent: (json['TextContent'] as List<dynamic>?)
          ?.map((e) => OpenBDTextContent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OpenBDCollateralDetailImplToJson(
        _$OpenBDCollateralDetailImpl instance) =>
    <String, dynamic>{
      'TextContent': instance.TextContent,
    };

_$OpenBDTextContentImpl _$$OpenBDTextContentImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenBDTextContentImpl(
      Text: json['Text'] as String?,
      TextType: json['TextType'] as String?,
    );

Map<String, dynamic> _$$OpenBDTextContentImplToJson(
        _$OpenBDTextContentImpl instance) =>
    <String, dynamic>{
      'Text': instance.Text,
      'TextType': instance.TextType,
    };

_$OpenBDHanmotoImpl _$$OpenBDHanmotoImplFromJson(Map<String, dynamic> json) =>
    _$OpenBDHanmotoImpl(
      maegakinado: json['maegakinado'] as String?,
    );

Map<String, dynamic> _$$OpenBDHanmotoImplToJson(_$OpenBDHanmotoImpl instance) =>
    <String, dynamic>{
      'maegakinado': instance.maegakinado,
    };

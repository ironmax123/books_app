// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookEntityImpl _$$BookEntityImplFromJson(Map<String, dynamic> json) =>
    _$BookEntityImpl(
      title: json['title'] as String,
      author: json['author'] as String,
      publicationDate: json['publicationDate'] as String?,
      isbn: json['isbn'] as String?,
      description: json['description'] as String?,
      thumbnailUrl: json['thumbnailUrl'] as String?,
    );

Map<String, dynamic> _$$BookEntityImplToJson(_$BookEntityImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'author': instance.author,
      'publicationDate': instance.publicationDate,
      'isbn': instance.isbn,
      'description': instance.description,
      'thumbnailUrl': instance.thumbnailUrl,
    };

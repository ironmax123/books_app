import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'entity.freezed.dart';
part 'entity.g.dart';

@freezed
@HiveType(typeId: 0)
class BookEntity with _$BookEntity {
  const factory BookEntity({
    @HiveField(0) required String title,
    @HiveField(1) required String author,
    @HiveField(2) String? publicationDate,
    @HiveField(3) String? isbn,
    @HiveField(4) required String? description,
    @HiveField(5) required String? thumbnailUrl,
  }) = _BookEntity;

  factory BookEntity.fromJson(Map<String, dynamic> json) =>
      _$BookEntityFromJson(json);
}

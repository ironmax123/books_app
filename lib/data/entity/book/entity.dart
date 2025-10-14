import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity.freezed.dart';
part 'entity.g.dart';

@freezed
class BookEntity with _$BookEntity {
  const factory BookEntity({
    required String title,
    required String author,
    String? publicationDate,
    String? isbn,
    required String? description,
    required String? thumbnailUrl,
  }) = _BookEntity;

  factory BookEntity.fromJson(Map<String, dynamic> json) =>
      _$BookEntityFromJson(json);
}

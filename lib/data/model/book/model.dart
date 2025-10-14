import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class BookModel with _$BookModel {
  const factory BookModel({
    required String title,
    required String author,
    String? publisher,
    String? publicationDate,
    String? isbn,
    String? description,
    String? thumbnailUrl,
  }) = _BookModel;

  factory BookModel.fromJson(Map<String, dynamic> json) =>
      _$BookModelFromJson(json);
}
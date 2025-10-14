// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookEntity _$BookEntityFromJson(Map<String, dynamic> json) {
  return _BookEntity.fromJson(json);
}

/// @nodoc
mixin _$BookEntity {
  @HiveField(0)
  String get title => throw _privateConstructorUsedError;
  @HiveField(1)
  String get author => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get publicationDate => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get isbn => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get thumbnailUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookEntityCopyWith<BookEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookEntityCopyWith<$Res> {
  factory $BookEntityCopyWith(
          BookEntity value, $Res Function(BookEntity) then) =
      _$BookEntityCopyWithImpl<$Res, BookEntity>;
  @useResult
  $Res call(
      {@HiveField(0) String title,
      @HiveField(1) String author,
      @HiveField(2) String? publicationDate,
      @HiveField(3) String? isbn,
      @HiveField(4) String? description,
      @HiveField(5) String? thumbnailUrl});
}

/// @nodoc
class _$BookEntityCopyWithImpl<$Res, $Val extends BookEntity>
    implements $BookEntityCopyWith<$Res> {
  _$BookEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? author = null,
    Object? publicationDate = freezed,
    Object? isbn = freezed,
    Object? description = freezed,
    Object? thumbnailUrl = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      publicationDate: freezed == publicationDate
          ? _value.publicationDate
          : publicationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isbn: freezed == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookEntityImplCopyWith<$Res>
    implements $BookEntityCopyWith<$Res> {
  factory _$$BookEntityImplCopyWith(
          _$BookEntityImpl value, $Res Function(_$BookEntityImpl) then) =
      __$$BookEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String title,
      @HiveField(1) String author,
      @HiveField(2) String? publicationDate,
      @HiveField(3) String? isbn,
      @HiveField(4) String? description,
      @HiveField(5) String? thumbnailUrl});
}

/// @nodoc
class __$$BookEntityImplCopyWithImpl<$Res>
    extends _$BookEntityCopyWithImpl<$Res, _$BookEntityImpl>
    implements _$$BookEntityImplCopyWith<$Res> {
  __$$BookEntityImplCopyWithImpl(
      _$BookEntityImpl _value, $Res Function(_$BookEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? author = null,
    Object? publicationDate = freezed,
    Object? isbn = freezed,
    Object? description = freezed,
    Object? thumbnailUrl = freezed,
  }) {
    return _then(_$BookEntityImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      publicationDate: freezed == publicationDate
          ? _value.publicationDate
          : publicationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isbn: freezed == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookEntityImpl implements _BookEntity {
  const _$BookEntityImpl(
      {@HiveField(0) required this.title,
      @HiveField(1) required this.author,
      @HiveField(2) this.publicationDate,
      @HiveField(3) this.isbn,
      @HiveField(4) required this.description,
      @HiveField(5) required this.thumbnailUrl});

  factory _$BookEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookEntityImplFromJson(json);

  @override
  @HiveField(0)
  final String title;
  @override
  @HiveField(1)
  final String author;
  @override
  @HiveField(2)
  final String? publicationDate;
  @override
  @HiveField(3)
  final String? isbn;
  @override
  @HiveField(4)
  final String? description;
  @override
  @HiveField(5)
  final String? thumbnailUrl;

  @override
  String toString() {
    return 'BookEntity(title: $title, author: $author, publicationDate: $publicationDate, isbn: $isbn, description: $description, thumbnailUrl: $thumbnailUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookEntityImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.publicationDate, publicationDate) ||
                other.publicationDate == publicationDate) &&
            (identical(other.isbn, isbn) || other.isbn == isbn) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, author, publicationDate,
      isbn, description, thumbnailUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookEntityImplCopyWith<_$BookEntityImpl> get copyWith =>
      __$$BookEntityImplCopyWithImpl<_$BookEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookEntityImplToJson(
      this,
    );
  }
}

abstract class _BookEntity implements BookEntity {
  const factory _BookEntity(
      {@HiveField(0) required final String title,
      @HiveField(1) required final String author,
      @HiveField(2) final String? publicationDate,
      @HiveField(3) final String? isbn,
      @HiveField(4) required final String? description,
      @HiveField(5) required final String? thumbnailUrl}) = _$BookEntityImpl;

  factory _BookEntity.fromJson(Map<String, dynamic> json) =
      _$BookEntityImpl.fromJson;

  @override
  @HiveField(0)
  String get title;
  @override
  @HiveField(1)
  String get author;
  @override
  @HiveField(2)
  String? get publicationDate;
  @override
  @HiveField(3)
  String? get isbn;
  @override
  @HiveField(4)
  String? get description;
  @override
  @HiveField(5)
  String? get thumbnailUrl;
  @override
  @JsonKey(ignore: true)
  _$$BookEntityImplCopyWith<_$BookEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

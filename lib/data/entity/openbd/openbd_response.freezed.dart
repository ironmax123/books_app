// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'openbd_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OpenBDResponse _$OpenBDResponseFromJson(Map<String, dynamic> json) {
  return _OpenBDResponse.fromJson(json);
}

/// @nodoc
mixin _$OpenBDResponse {
  OpenBDSummary? get summary => throw _privateConstructorUsedError;
  OpenBDOnix? get onix => throw _privateConstructorUsedError;
  OpenBDHanmoto? get hanmoto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenBDResponseCopyWith<OpenBDResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenBDResponseCopyWith<$Res> {
  factory $OpenBDResponseCopyWith(
          OpenBDResponse value, $Res Function(OpenBDResponse) then) =
      _$OpenBDResponseCopyWithImpl<$Res, OpenBDResponse>;
  @useResult
  $Res call({OpenBDSummary? summary, OpenBDOnix? onix, OpenBDHanmoto? hanmoto});

  $OpenBDSummaryCopyWith<$Res>? get summary;
  $OpenBDOnixCopyWith<$Res>? get onix;
  $OpenBDHanmotoCopyWith<$Res>? get hanmoto;
}

/// @nodoc
class _$OpenBDResponseCopyWithImpl<$Res, $Val extends OpenBDResponse>
    implements $OpenBDResponseCopyWith<$Res> {
  _$OpenBDResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summary = freezed,
    Object? onix = freezed,
    Object? hanmoto = freezed,
  }) {
    return _then(_value.copyWith(
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as OpenBDSummary?,
      onix: freezed == onix
          ? _value.onix
          : onix // ignore: cast_nullable_to_non_nullable
              as OpenBDOnix?,
      hanmoto: freezed == hanmoto
          ? _value.hanmoto
          : hanmoto // ignore: cast_nullable_to_non_nullable
              as OpenBDHanmoto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OpenBDSummaryCopyWith<$Res>? get summary {
    if (_value.summary == null) {
      return null;
    }

    return $OpenBDSummaryCopyWith<$Res>(_value.summary!, (value) {
      return _then(_value.copyWith(summary: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OpenBDOnixCopyWith<$Res>? get onix {
    if (_value.onix == null) {
      return null;
    }

    return $OpenBDOnixCopyWith<$Res>(_value.onix!, (value) {
      return _then(_value.copyWith(onix: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OpenBDHanmotoCopyWith<$Res>? get hanmoto {
    if (_value.hanmoto == null) {
      return null;
    }

    return $OpenBDHanmotoCopyWith<$Res>(_value.hanmoto!, (value) {
      return _then(_value.copyWith(hanmoto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OpenBDResponseImplCopyWith<$Res>
    implements $OpenBDResponseCopyWith<$Res> {
  factory _$$OpenBDResponseImplCopyWith(_$OpenBDResponseImpl value,
          $Res Function(_$OpenBDResponseImpl) then) =
      __$$OpenBDResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OpenBDSummary? summary, OpenBDOnix? onix, OpenBDHanmoto? hanmoto});

  @override
  $OpenBDSummaryCopyWith<$Res>? get summary;
  @override
  $OpenBDOnixCopyWith<$Res>? get onix;
  @override
  $OpenBDHanmotoCopyWith<$Res>? get hanmoto;
}

/// @nodoc
class __$$OpenBDResponseImplCopyWithImpl<$Res>
    extends _$OpenBDResponseCopyWithImpl<$Res, _$OpenBDResponseImpl>
    implements _$$OpenBDResponseImplCopyWith<$Res> {
  __$$OpenBDResponseImplCopyWithImpl(
      _$OpenBDResponseImpl _value, $Res Function(_$OpenBDResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summary = freezed,
    Object? onix = freezed,
    Object? hanmoto = freezed,
  }) {
    return _then(_$OpenBDResponseImpl(
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as OpenBDSummary?,
      onix: freezed == onix
          ? _value.onix
          : onix // ignore: cast_nullable_to_non_nullable
              as OpenBDOnix?,
      hanmoto: freezed == hanmoto
          ? _value.hanmoto
          : hanmoto // ignore: cast_nullable_to_non_nullable
              as OpenBDHanmoto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenBDResponseImpl implements _OpenBDResponse {
  const _$OpenBDResponseImpl({this.summary, this.onix, this.hanmoto});

  factory _$OpenBDResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenBDResponseImplFromJson(json);

  @override
  final OpenBDSummary? summary;
  @override
  final OpenBDOnix? onix;
  @override
  final OpenBDHanmoto? hanmoto;

  @override
  String toString() {
    return 'OpenBDResponse(summary: $summary, onix: $onix, hanmoto: $hanmoto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenBDResponseImpl &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.onix, onix) || other.onix == onix) &&
            (identical(other.hanmoto, hanmoto) || other.hanmoto == hanmoto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, summary, onix, hanmoto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenBDResponseImplCopyWith<_$OpenBDResponseImpl> get copyWith =>
      __$$OpenBDResponseImplCopyWithImpl<_$OpenBDResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenBDResponseImplToJson(
      this,
    );
  }
}

abstract class _OpenBDResponse implements OpenBDResponse {
  const factory _OpenBDResponse(
      {final OpenBDSummary? summary,
      final OpenBDOnix? onix,
      final OpenBDHanmoto? hanmoto}) = _$OpenBDResponseImpl;

  factory _OpenBDResponse.fromJson(Map<String, dynamic> json) =
      _$OpenBDResponseImpl.fromJson;

  @override
  OpenBDSummary? get summary;
  @override
  OpenBDOnix? get onix;
  @override
  OpenBDHanmoto? get hanmoto;
  @override
  @JsonKey(ignore: true)
  _$$OpenBDResponseImplCopyWith<_$OpenBDResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OpenBDSummary _$OpenBDSummaryFromJson(Map<String, dynamic> json) {
  return _OpenBDSummary.fromJson(json);
}

/// @nodoc
mixin _$OpenBDSummary {
  String? get cover => throw _privateConstructorUsedError;
  String? get isbn => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get publisher => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenBDSummaryCopyWith<OpenBDSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenBDSummaryCopyWith<$Res> {
  factory $OpenBDSummaryCopyWith(
          OpenBDSummary value, $Res Function(OpenBDSummary) then) =
      _$OpenBDSummaryCopyWithImpl<$Res, OpenBDSummary>;
  @useResult
  $Res call(
      {String? cover,
      String? isbn,
      String? title,
      String? author,
      String? publisher});
}

/// @nodoc
class _$OpenBDSummaryCopyWithImpl<$Res, $Val extends OpenBDSummary>
    implements $OpenBDSummaryCopyWith<$Res> {
  _$OpenBDSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cover = freezed,
    Object? isbn = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? publisher = freezed,
  }) {
    return _then(_value.copyWith(
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      isbn: freezed == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenBDSummaryImplCopyWith<$Res>
    implements $OpenBDSummaryCopyWith<$Res> {
  factory _$$OpenBDSummaryImplCopyWith(
          _$OpenBDSummaryImpl value, $Res Function(_$OpenBDSummaryImpl) then) =
      __$$OpenBDSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? cover,
      String? isbn,
      String? title,
      String? author,
      String? publisher});
}

/// @nodoc
class __$$OpenBDSummaryImplCopyWithImpl<$Res>
    extends _$OpenBDSummaryCopyWithImpl<$Res, _$OpenBDSummaryImpl>
    implements _$$OpenBDSummaryImplCopyWith<$Res> {
  __$$OpenBDSummaryImplCopyWithImpl(
      _$OpenBDSummaryImpl _value, $Res Function(_$OpenBDSummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cover = freezed,
    Object? isbn = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? publisher = freezed,
  }) {
    return _then(_$OpenBDSummaryImpl(
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      isbn: freezed == isbn
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenBDSummaryImpl implements _OpenBDSummary {
  const _$OpenBDSummaryImpl(
      {this.cover, this.isbn, this.title, this.author, this.publisher});

  factory _$OpenBDSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenBDSummaryImplFromJson(json);

  @override
  final String? cover;
  @override
  final String? isbn;
  @override
  final String? title;
  @override
  final String? author;
  @override
  final String? publisher;

  @override
  String toString() {
    return 'OpenBDSummary(cover: $cover, isbn: $isbn, title: $title, author: $author, publisher: $publisher)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenBDSummaryImpl &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.isbn, isbn) || other.isbn == isbn) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, cover, isbn, title, author, publisher);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenBDSummaryImplCopyWith<_$OpenBDSummaryImpl> get copyWith =>
      __$$OpenBDSummaryImplCopyWithImpl<_$OpenBDSummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenBDSummaryImplToJson(
      this,
    );
  }
}

abstract class _OpenBDSummary implements OpenBDSummary {
  const factory _OpenBDSummary(
      {final String? cover,
      final String? isbn,
      final String? title,
      final String? author,
      final String? publisher}) = _$OpenBDSummaryImpl;

  factory _OpenBDSummary.fromJson(Map<String, dynamic> json) =
      _$OpenBDSummaryImpl.fromJson;

  @override
  String? get cover;
  @override
  String? get isbn;
  @override
  String? get title;
  @override
  String? get author;
  @override
  String? get publisher;
  @override
  @JsonKey(ignore: true)
  _$$OpenBDSummaryImplCopyWith<_$OpenBDSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OpenBDOnix _$OpenBDOnixFromJson(Map<String, dynamic> json) {
  return _OpenBDOnix.fromJson(json);
}

/// @nodoc
mixin _$OpenBDOnix {
  OpenBDCollateralDetail? get CollateralDetail =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenBDOnixCopyWith<OpenBDOnix> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenBDOnixCopyWith<$Res> {
  factory $OpenBDOnixCopyWith(
          OpenBDOnix value, $Res Function(OpenBDOnix) then) =
      _$OpenBDOnixCopyWithImpl<$Res, OpenBDOnix>;
  @useResult
  $Res call({OpenBDCollateralDetail? CollateralDetail});

  $OpenBDCollateralDetailCopyWith<$Res>? get CollateralDetail;
}

/// @nodoc
class _$OpenBDOnixCopyWithImpl<$Res, $Val extends OpenBDOnix>
    implements $OpenBDOnixCopyWith<$Res> {
  _$OpenBDOnixCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? CollateralDetail = freezed,
  }) {
    return _then(_value.copyWith(
      CollateralDetail: freezed == CollateralDetail
          ? _value.CollateralDetail
          : CollateralDetail // ignore: cast_nullable_to_non_nullable
              as OpenBDCollateralDetail?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OpenBDCollateralDetailCopyWith<$Res>? get CollateralDetail {
    if (_value.CollateralDetail == null) {
      return null;
    }

    return $OpenBDCollateralDetailCopyWith<$Res>(_value.CollateralDetail!,
        (value) {
      return _then(_value.copyWith(CollateralDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OpenBDOnixImplCopyWith<$Res>
    implements $OpenBDOnixCopyWith<$Res> {
  factory _$$OpenBDOnixImplCopyWith(
          _$OpenBDOnixImpl value, $Res Function(_$OpenBDOnixImpl) then) =
      __$$OpenBDOnixImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OpenBDCollateralDetail? CollateralDetail});

  @override
  $OpenBDCollateralDetailCopyWith<$Res>? get CollateralDetail;
}

/// @nodoc
class __$$OpenBDOnixImplCopyWithImpl<$Res>
    extends _$OpenBDOnixCopyWithImpl<$Res, _$OpenBDOnixImpl>
    implements _$$OpenBDOnixImplCopyWith<$Res> {
  __$$OpenBDOnixImplCopyWithImpl(
      _$OpenBDOnixImpl _value, $Res Function(_$OpenBDOnixImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? CollateralDetail = freezed,
  }) {
    return _then(_$OpenBDOnixImpl(
      CollateralDetail: freezed == CollateralDetail
          ? _value.CollateralDetail
          : CollateralDetail // ignore: cast_nullable_to_non_nullable
              as OpenBDCollateralDetail?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenBDOnixImpl implements _OpenBDOnix {
  const _$OpenBDOnixImpl({this.CollateralDetail});

  factory _$OpenBDOnixImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenBDOnixImplFromJson(json);

  @override
  final OpenBDCollateralDetail? CollateralDetail;

  @override
  String toString() {
    return 'OpenBDOnix(CollateralDetail: $CollateralDetail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenBDOnixImpl &&
            (identical(other.CollateralDetail, CollateralDetail) ||
                other.CollateralDetail == CollateralDetail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, CollateralDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenBDOnixImplCopyWith<_$OpenBDOnixImpl> get copyWith =>
      __$$OpenBDOnixImplCopyWithImpl<_$OpenBDOnixImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenBDOnixImplToJson(
      this,
    );
  }
}

abstract class _OpenBDOnix implements OpenBDOnix {
  const factory _OpenBDOnix({final OpenBDCollateralDetail? CollateralDetail}) =
      _$OpenBDOnixImpl;

  factory _OpenBDOnix.fromJson(Map<String, dynamic> json) =
      _$OpenBDOnixImpl.fromJson;

  @override
  OpenBDCollateralDetail? get CollateralDetail;
  @override
  @JsonKey(ignore: true)
  _$$OpenBDOnixImplCopyWith<_$OpenBDOnixImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OpenBDCollateralDetail _$OpenBDCollateralDetailFromJson(
    Map<String, dynamic> json) {
  return _OpenBDCollateralDetail.fromJson(json);
}

/// @nodoc
mixin _$OpenBDCollateralDetail {
  List<OpenBDTextContent>? get TextContent =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenBDCollateralDetailCopyWith<OpenBDCollateralDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenBDCollateralDetailCopyWith<$Res> {
  factory $OpenBDCollateralDetailCopyWith(OpenBDCollateralDetail value,
          $Res Function(OpenBDCollateralDetail) then) =
      _$OpenBDCollateralDetailCopyWithImpl<$Res, OpenBDCollateralDetail>;
  @useResult
  $Res call({List<OpenBDTextContent>? TextContent});
}

/// @nodoc
class _$OpenBDCollateralDetailCopyWithImpl<$Res,
        $Val extends OpenBDCollateralDetail>
    implements $OpenBDCollateralDetailCopyWith<$Res> {
  _$OpenBDCollateralDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? TextContent = freezed,
  }) {
    return _then(_value.copyWith(
      TextContent: freezed == TextContent
          ? _value.TextContent
          : TextContent // ignore: cast_nullable_to_non_nullable
              as List<OpenBDTextContent>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenBDCollateralDetailImplCopyWith<$Res>
    implements $OpenBDCollateralDetailCopyWith<$Res> {
  factory _$$OpenBDCollateralDetailImplCopyWith(
          _$OpenBDCollateralDetailImpl value,
          $Res Function(_$OpenBDCollateralDetailImpl) then) =
      __$$OpenBDCollateralDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OpenBDTextContent>? TextContent});
}

/// @nodoc
class __$$OpenBDCollateralDetailImplCopyWithImpl<$Res>
    extends _$OpenBDCollateralDetailCopyWithImpl<$Res,
        _$OpenBDCollateralDetailImpl>
    implements _$$OpenBDCollateralDetailImplCopyWith<$Res> {
  __$$OpenBDCollateralDetailImplCopyWithImpl(
      _$OpenBDCollateralDetailImpl _value,
      $Res Function(_$OpenBDCollateralDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? TextContent = freezed,
  }) {
    return _then(_$OpenBDCollateralDetailImpl(
      TextContent: freezed == TextContent
          ? _value._TextContent
          : TextContent // ignore: cast_nullable_to_non_nullable
              as List<OpenBDTextContent>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenBDCollateralDetailImpl implements _OpenBDCollateralDetail {
  const _$OpenBDCollateralDetailImpl(
      {final List<OpenBDTextContent>? TextContent})
      : _TextContent = TextContent;

  factory _$OpenBDCollateralDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenBDCollateralDetailImplFromJson(json);

  final List<OpenBDTextContent>? _TextContent;
  @override
  List<OpenBDTextContent>? get TextContent {
    final value = _TextContent;
    if (value == null) return null;
    if (_TextContent is EqualUnmodifiableListView) return _TextContent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OpenBDCollateralDetail(TextContent: $TextContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenBDCollateralDetailImpl &&
            const DeepCollectionEquality()
                .equals(other._TextContent, _TextContent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_TextContent));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenBDCollateralDetailImplCopyWith<_$OpenBDCollateralDetailImpl>
      get copyWith => __$$OpenBDCollateralDetailImplCopyWithImpl<
          _$OpenBDCollateralDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenBDCollateralDetailImplToJson(
      this,
    );
  }
}

abstract class _OpenBDCollateralDetail implements OpenBDCollateralDetail {
  const factory _OpenBDCollateralDetail(
          {final List<OpenBDTextContent>? TextContent}) =
      _$OpenBDCollateralDetailImpl;

  factory _OpenBDCollateralDetail.fromJson(Map<String, dynamic> json) =
      _$OpenBDCollateralDetailImpl.fromJson;

  @override
  List<OpenBDTextContent>? get TextContent;
  @override
  @JsonKey(ignore: true)
  _$$OpenBDCollateralDetailImplCopyWith<_$OpenBDCollateralDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OpenBDTextContent _$OpenBDTextContentFromJson(Map<String, dynamic> json) {
  return _OpenBDTextContent.fromJson(json);
}

/// @nodoc
mixin _$OpenBDTextContent {
  String? get Text => throw _privateConstructorUsedError;
  String? get TextType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenBDTextContentCopyWith<OpenBDTextContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenBDTextContentCopyWith<$Res> {
  factory $OpenBDTextContentCopyWith(
          OpenBDTextContent value, $Res Function(OpenBDTextContent) then) =
      _$OpenBDTextContentCopyWithImpl<$Res, OpenBDTextContent>;
  @useResult
  $Res call({String? Text, String? TextType});
}

/// @nodoc
class _$OpenBDTextContentCopyWithImpl<$Res, $Val extends OpenBDTextContent>
    implements $OpenBDTextContentCopyWith<$Res> {
  _$OpenBDTextContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Text = freezed,
    Object? TextType = freezed,
  }) {
    return _then(_value.copyWith(
      Text: freezed == Text
          ? _value.Text
          : Text // ignore: cast_nullable_to_non_nullable
              as String?,
      TextType: freezed == TextType
          ? _value.TextType
          : TextType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenBDTextContentImplCopyWith<$Res>
    implements $OpenBDTextContentCopyWith<$Res> {
  factory _$$OpenBDTextContentImplCopyWith(_$OpenBDTextContentImpl value,
          $Res Function(_$OpenBDTextContentImpl) then) =
      __$$OpenBDTextContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? Text, String? TextType});
}

/// @nodoc
class __$$OpenBDTextContentImplCopyWithImpl<$Res>
    extends _$OpenBDTextContentCopyWithImpl<$Res, _$OpenBDTextContentImpl>
    implements _$$OpenBDTextContentImplCopyWith<$Res> {
  __$$OpenBDTextContentImplCopyWithImpl(_$OpenBDTextContentImpl _value,
      $Res Function(_$OpenBDTextContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Text = freezed,
    Object? TextType = freezed,
  }) {
    return _then(_$OpenBDTextContentImpl(
      Text: freezed == Text
          ? _value.Text
          : Text // ignore: cast_nullable_to_non_nullable
              as String?,
      TextType: freezed == TextType
          ? _value.TextType
          : TextType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenBDTextContentImpl implements _OpenBDTextContent {
  const _$OpenBDTextContentImpl({this.Text, this.TextType});

  factory _$OpenBDTextContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenBDTextContentImplFromJson(json);

  @override
  final String? Text;
  @override
  final String? TextType;

  @override
  String toString() {
    return 'OpenBDTextContent(Text: $Text, TextType: $TextType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenBDTextContentImpl &&
            (identical(other.Text, Text) || other.Text == Text) &&
            (identical(other.TextType, TextType) ||
                other.TextType == TextType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, Text, TextType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenBDTextContentImplCopyWith<_$OpenBDTextContentImpl> get copyWith =>
      __$$OpenBDTextContentImplCopyWithImpl<_$OpenBDTextContentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenBDTextContentImplToJson(
      this,
    );
  }
}

abstract class _OpenBDTextContent implements OpenBDTextContent {
  const factory _OpenBDTextContent(
      {final String? Text, final String? TextType}) = _$OpenBDTextContentImpl;

  factory _OpenBDTextContent.fromJson(Map<String, dynamic> json) =
      _$OpenBDTextContentImpl.fromJson;

  @override
  String? get Text;
  @override
  String? get TextType;
  @override
  @JsonKey(ignore: true)
  _$$OpenBDTextContentImplCopyWith<_$OpenBDTextContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OpenBDHanmoto _$OpenBDHanmotoFromJson(Map<String, dynamic> json) {
  return _OpenBDHanmoto.fromJson(json);
}

/// @nodoc
mixin _$OpenBDHanmoto {
  String? get maegakinado => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenBDHanmotoCopyWith<OpenBDHanmoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenBDHanmotoCopyWith<$Res> {
  factory $OpenBDHanmotoCopyWith(
          OpenBDHanmoto value, $Res Function(OpenBDHanmoto) then) =
      _$OpenBDHanmotoCopyWithImpl<$Res, OpenBDHanmoto>;
  @useResult
  $Res call({String? maegakinado});
}

/// @nodoc
class _$OpenBDHanmotoCopyWithImpl<$Res, $Val extends OpenBDHanmoto>
    implements $OpenBDHanmotoCopyWith<$Res> {
  _$OpenBDHanmotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maegakinado = freezed,
  }) {
    return _then(_value.copyWith(
      maegakinado: freezed == maegakinado
          ? _value.maegakinado
          : maegakinado // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenBDHanmotoImplCopyWith<$Res>
    implements $OpenBDHanmotoCopyWith<$Res> {
  factory _$$OpenBDHanmotoImplCopyWith(
          _$OpenBDHanmotoImpl value, $Res Function(_$OpenBDHanmotoImpl) then) =
      __$$OpenBDHanmotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? maegakinado});
}

/// @nodoc
class __$$OpenBDHanmotoImplCopyWithImpl<$Res>
    extends _$OpenBDHanmotoCopyWithImpl<$Res, _$OpenBDHanmotoImpl>
    implements _$$OpenBDHanmotoImplCopyWith<$Res> {
  __$$OpenBDHanmotoImplCopyWithImpl(
      _$OpenBDHanmotoImpl _value, $Res Function(_$OpenBDHanmotoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maegakinado = freezed,
  }) {
    return _then(_$OpenBDHanmotoImpl(
      maegakinado: freezed == maegakinado
          ? _value.maegakinado
          : maegakinado // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenBDHanmotoImpl implements _OpenBDHanmoto {
  const _$OpenBDHanmotoImpl({this.maegakinado});

  factory _$OpenBDHanmotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenBDHanmotoImplFromJson(json);

  @override
  final String? maegakinado;

  @override
  String toString() {
    return 'OpenBDHanmoto(maegakinado: $maegakinado)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenBDHanmotoImpl &&
            (identical(other.maegakinado, maegakinado) ||
                other.maegakinado == maegakinado));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, maegakinado);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenBDHanmotoImplCopyWith<_$OpenBDHanmotoImpl> get copyWith =>
      __$$OpenBDHanmotoImplCopyWithImpl<_$OpenBDHanmotoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenBDHanmotoImplToJson(
      this,
    );
  }
}

abstract class _OpenBDHanmoto implements OpenBDHanmoto {
  const factory _OpenBDHanmoto({final String? maegakinado}) =
      _$OpenBDHanmotoImpl;

  factory _OpenBDHanmoto.fromJson(Map<String, dynamic> json) =
      _$OpenBDHanmotoImpl.fromJson;

  @override
  String? get maegakinado;
  @override
  @JsonKey(ignore: true)
  _$$OpenBDHanmotoImplCopyWith<_$OpenBDHanmotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

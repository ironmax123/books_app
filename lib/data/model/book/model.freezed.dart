// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BookApiResponse _$BookApiResponseFromJson(Map<String, dynamic> json) {
  return _BookApiResponse.fromJson(json);
}

/// @nodoc
mixin _$BookApiResponse {
  @JsonKey(name: 'searchRetrieveResponse')
  SearchRetrieveResponse? get searchRetrieveResponse =>
      throw _privateConstructorUsedError;

  /// Serializes this BookApiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookApiResponseCopyWith<BookApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookApiResponseCopyWith<$Res> {
  factory $BookApiResponseCopyWith(
    BookApiResponse value,
    $Res Function(BookApiResponse) then,
  ) = _$BookApiResponseCopyWithImpl<$Res, BookApiResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'searchRetrieveResponse')
    SearchRetrieveResponse? searchRetrieveResponse,
  });

  $SearchRetrieveResponseCopyWith<$Res>? get searchRetrieveResponse;
}

/// @nodoc
class _$BookApiResponseCopyWithImpl<$Res, $Val extends BookApiResponse>
    implements $BookApiResponseCopyWith<$Res> {
  _$BookApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? searchRetrieveResponse = freezed}) {
    return _then(
      _value.copyWith(
            searchRetrieveResponse: freezed == searchRetrieveResponse
                ? _value.searchRetrieveResponse
                : searchRetrieveResponse // ignore: cast_nullable_to_non_nullable
                      as SearchRetrieveResponse?,
          )
          as $Val,
    );
  }

  /// Create a copy of BookApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchRetrieveResponseCopyWith<$Res>? get searchRetrieveResponse {
    if (_value.searchRetrieveResponse == null) {
      return null;
    }

    return $SearchRetrieveResponseCopyWith<$Res>(
      _value.searchRetrieveResponse!,
      (value) {
        return _then(_value.copyWith(searchRetrieveResponse: value) as $Val);
      },
    );
  }
}

/// @nodoc
abstract class _$$BookApiResponseImplCopyWith<$Res>
    implements $BookApiResponseCopyWith<$Res> {
  factory _$$BookApiResponseImplCopyWith(
    _$BookApiResponseImpl value,
    $Res Function(_$BookApiResponseImpl) then,
  ) = __$$BookApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'searchRetrieveResponse')
    SearchRetrieveResponse? searchRetrieveResponse,
  });

  @override
  $SearchRetrieveResponseCopyWith<$Res>? get searchRetrieveResponse;
}

/// @nodoc
class __$$BookApiResponseImplCopyWithImpl<$Res>
    extends _$BookApiResponseCopyWithImpl<$Res, _$BookApiResponseImpl>
    implements _$$BookApiResponseImplCopyWith<$Res> {
  __$$BookApiResponseImplCopyWithImpl(
    _$BookApiResponseImpl _value,
    $Res Function(_$BookApiResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? searchRetrieveResponse = freezed}) {
    return _then(
      _$BookApiResponseImpl(
        searchRetrieveResponse: freezed == searchRetrieveResponse
            ? _value.searchRetrieveResponse
            : searchRetrieveResponse // ignore: cast_nullable_to_non_nullable
                  as SearchRetrieveResponse?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BookApiResponseImpl implements _BookApiResponse {
  const _$BookApiResponseImpl({
    @JsonKey(name: 'searchRetrieveResponse') this.searchRetrieveResponse,
  });

  factory _$BookApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookApiResponseImplFromJson(json);

  @override
  @JsonKey(name: 'searchRetrieveResponse')
  final SearchRetrieveResponse? searchRetrieveResponse;

  @override
  String toString() {
    return 'BookApiResponse(searchRetrieveResponse: $searchRetrieveResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookApiResponseImpl &&
            (identical(other.searchRetrieveResponse, searchRetrieveResponse) ||
                other.searchRetrieveResponse == searchRetrieveResponse));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, searchRetrieveResponse);

  /// Create a copy of BookApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookApiResponseImplCopyWith<_$BookApiResponseImpl> get copyWith =>
      __$$BookApiResponseImplCopyWithImpl<_$BookApiResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BookApiResponseImplToJson(this);
  }
}

abstract class _BookApiResponse implements BookApiResponse {
  const factory _BookApiResponse({
    @JsonKey(name: 'searchRetrieveResponse')
    final SearchRetrieveResponse? searchRetrieveResponse,
  }) = _$BookApiResponseImpl;

  factory _BookApiResponse.fromJson(Map<String, dynamic> json) =
      _$BookApiResponseImpl.fromJson;

  @override
  @JsonKey(name: 'searchRetrieveResponse')
  SearchRetrieveResponse? get searchRetrieveResponse;

  /// Create a copy of BookApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookApiResponseImplCopyWith<_$BookApiResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchRetrieveResponse _$SearchRetrieveResponseFromJson(
  Map<String, dynamic> json,
) {
  return _SearchRetrieveResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchRetrieveResponse {
  @JsonKey(name: 'numberOfRecords')
  String? get numberOfRecords => throw _privateConstructorUsedError;
  @JsonKey(name: 'records')
  Records? get records => throw _privateConstructorUsedError;

  /// Serializes this SearchRetrieveResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchRetrieveResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchRetrieveResponseCopyWith<SearchRetrieveResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRetrieveResponseCopyWith<$Res> {
  factory $SearchRetrieveResponseCopyWith(
    SearchRetrieveResponse value,
    $Res Function(SearchRetrieveResponse) then,
  ) = _$SearchRetrieveResponseCopyWithImpl<$Res, SearchRetrieveResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'numberOfRecords') String? numberOfRecords,
    @JsonKey(name: 'records') Records? records,
  });

  $RecordsCopyWith<$Res>? get records;
}

/// @nodoc
class _$SearchRetrieveResponseCopyWithImpl<
  $Res,
  $Val extends SearchRetrieveResponse
>
    implements $SearchRetrieveResponseCopyWith<$Res> {
  _$SearchRetrieveResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchRetrieveResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? numberOfRecords = freezed, Object? records = freezed}) {
    return _then(
      _value.copyWith(
            numberOfRecords: freezed == numberOfRecords
                ? _value.numberOfRecords
                : numberOfRecords // ignore: cast_nullable_to_non_nullable
                      as String?,
            records: freezed == records
                ? _value.records
                : records // ignore: cast_nullable_to_non_nullable
                      as Records?,
          )
          as $Val,
    );
  }

  /// Create a copy of SearchRetrieveResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecordsCopyWith<$Res>? get records {
    if (_value.records == null) {
      return null;
    }

    return $RecordsCopyWith<$Res>(_value.records!, (value) {
      return _then(_value.copyWith(records: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchRetrieveResponseImplCopyWith<$Res>
    implements $SearchRetrieveResponseCopyWith<$Res> {
  factory _$$SearchRetrieveResponseImplCopyWith(
    _$SearchRetrieveResponseImpl value,
    $Res Function(_$SearchRetrieveResponseImpl) then,
  ) = __$$SearchRetrieveResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'numberOfRecords') String? numberOfRecords,
    @JsonKey(name: 'records') Records? records,
  });

  @override
  $RecordsCopyWith<$Res>? get records;
}

/// @nodoc
class __$$SearchRetrieveResponseImplCopyWithImpl<$Res>
    extends
        _$SearchRetrieveResponseCopyWithImpl<$Res, _$SearchRetrieveResponseImpl>
    implements _$$SearchRetrieveResponseImplCopyWith<$Res> {
  __$$SearchRetrieveResponseImplCopyWithImpl(
    _$SearchRetrieveResponseImpl _value,
    $Res Function(_$SearchRetrieveResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchRetrieveResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? numberOfRecords = freezed, Object? records = freezed}) {
    return _then(
      _$SearchRetrieveResponseImpl(
        numberOfRecords: freezed == numberOfRecords
            ? _value.numberOfRecords
            : numberOfRecords // ignore: cast_nullable_to_non_nullable
                  as String?,
        records: freezed == records
            ? _value.records
            : records // ignore: cast_nullable_to_non_nullable
                  as Records?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchRetrieveResponseImpl implements _SearchRetrieveResponse {
  const _$SearchRetrieveResponseImpl({
    @JsonKey(name: 'numberOfRecords') this.numberOfRecords,
    @JsonKey(name: 'records') this.records,
  });

  factory _$SearchRetrieveResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchRetrieveResponseImplFromJson(json);

  @override
  @JsonKey(name: 'numberOfRecords')
  final String? numberOfRecords;
  @override
  @JsonKey(name: 'records')
  final Records? records;

  @override
  String toString() {
    return 'SearchRetrieveResponse(numberOfRecords: $numberOfRecords, records: $records)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchRetrieveResponseImpl &&
            (identical(other.numberOfRecords, numberOfRecords) ||
                other.numberOfRecords == numberOfRecords) &&
            (identical(other.records, records) || other.records == records));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, numberOfRecords, records);

  /// Create a copy of SearchRetrieveResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchRetrieveResponseImplCopyWith<_$SearchRetrieveResponseImpl>
  get copyWith =>
      __$$SearchRetrieveResponseImplCopyWithImpl<_$SearchRetrieveResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchRetrieveResponseImplToJson(this);
  }
}

abstract class _SearchRetrieveResponse implements SearchRetrieveResponse {
  const factory _SearchRetrieveResponse({
    @JsonKey(name: 'numberOfRecords') final String? numberOfRecords,
    @JsonKey(name: 'records') final Records? records,
  }) = _$SearchRetrieveResponseImpl;

  factory _SearchRetrieveResponse.fromJson(Map<String, dynamic> json) =
      _$SearchRetrieveResponseImpl.fromJson;

  @override
  @JsonKey(name: 'numberOfRecords')
  String? get numberOfRecords;
  @override
  @JsonKey(name: 'records')
  Records? get records;

  /// Create a copy of SearchRetrieveResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchRetrieveResponseImplCopyWith<_$SearchRetrieveResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

Records _$RecordsFromJson(Map<String, dynamic> json) {
  return _Records.fromJson(json);
}

/// @nodoc
mixin _$Records {
  @JsonKey(name: 'record')
  dynamic get record => throw _privateConstructorUsedError;

  /// Serializes this Records to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Records
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecordsCopyWith<Records> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordsCopyWith<$Res> {
  factory $RecordsCopyWith(Records value, $Res Function(Records) then) =
      _$RecordsCopyWithImpl<$Res, Records>;
  @useResult
  $Res call({@JsonKey(name: 'record') dynamic record});
}

/// @nodoc
class _$RecordsCopyWithImpl<$Res, $Val extends Records>
    implements $RecordsCopyWith<$Res> {
  _$RecordsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Records
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? record = freezed}) {
    return _then(
      _value.copyWith(
            record: freezed == record
                ? _value.record
                : record // ignore: cast_nullable_to_non_nullable
                      as dynamic,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RecordsImplCopyWith<$Res> implements $RecordsCopyWith<$Res> {
  factory _$$RecordsImplCopyWith(
    _$RecordsImpl value,
    $Res Function(_$RecordsImpl) then,
  ) = __$$RecordsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'record') dynamic record});
}

/// @nodoc
class __$$RecordsImplCopyWithImpl<$Res>
    extends _$RecordsCopyWithImpl<$Res, _$RecordsImpl>
    implements _$$RecordsImplCopyWith<$Res> {
  __$$RecordsImplCopyWithImpl(
    _$RecordsImpl _value,
    $Res Function(_$RecordsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Records
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? record = freezed}) {
    return _then(
      _$RecordsImpl(
        record: freezed == record
            ? _value.record
            : record // ignore: cast_nullable_to_non_nullable
                  as dynamic,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RecordsImpl implements _Records {
  const _$RecordsImpl({@JsonKey(name: 'record') this.record});

  factory _$RecordsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecordsImplFromJson(json);

  @override
  @JsonKey(name: 'record')
  final dynamic record;

  @override
  String toString() {
    return 'Records(record: $record)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordsImpl &&
            const DeepCollectionEquality().equals(other.record, record));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(record));

  /// Create a copy of Records
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordsImplCopyWith<_$RecordsImpl> get copyWith =>
      __$$RecordsImplCopyWithImpl<_$RecordsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecordsImplToJson(this);
  }
}

abstract class _Records implements Records {
  const factory _Records({@JsonKey(name: 'record') final dynamic record}) =
      _$RecordsImpl;

  factory _Records.fromJson(Map<String, dynamic> json) = _$RecordsImpl.fromJson;

  @override
  @JsonKey(name: 'record')
  dynamic get record;

  /// Create a copy of Records
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordsImplCopyWith<_$RecordsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Record _$RecordFromJson(Map<String, dynamic> json) {
  return _Record.fromJson(json);
}

/// @nodoc
mixin _$Record {
  @JsonKey(name: 'recordData')
  RecordData? get recordData => throw _privateConstructorUsedError;

  /// Serializes this Record to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Record
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecordCopyWith<Record> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordCopyWith<$Res> {
  factory $RecordCopyWith(Record value, $Res Function(Record) then) =
      _$RecordCopyWithImpl<$Res, Record>;
  @useResult
  $Res call({@JsonKey(name: 'recordData') RecordData? recordData});

  $RecordDataCopyWith<$Res>? get recordData;
}

/// @nodoc
class _$RecordCopyWithImpl<$Res, $Val extends Record>
    implements $RecordCopyWith<$Res> {
  _$RecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Record
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? recordData = freezed}) {
    return _then(
      _value.copyWith(
            recordData: freezed == recordData
                ? _value.recordData
                : recordData // ignore: cast_nullable_to_non_nullable
                      as RecordData?,
          )
          as $Val,
    );
  }

  /// Create a copy of Record
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecordDataCopyWith<$Res>? get recordData {
    if (_value.recordData == null) {
      return null;
    }

    return $RecordDataCopyWith<$Res>(_value.recordData!, (value) {
      return _then(_value.copyWith(recordData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecordImplCopyWith<$Res> implements $RecordCopyWith<$Res> {
  factory _$$RecordImplCopyWith(
    _$RecordImpl value,
    $Res Function(_$RecordImpl) then,
  ) = __$$RecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'recordData') RecordData? recordData});

  @override
  $RecordDataCopyWith<$Res>? get recordData;
}

/// @nodoc
class __$$RecordImplCopyWithImpl<$Res>
    extends _$RecordCopyWithImpl<$Res, _$RecordImpl>
    implements _$$RecordImplCopyWith<$Res> {
  __$$RecordImplCopyWithImpl(
    _$RecordImpl _value,
    $Res Function(_$RecordImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Record
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? recordData = freezed}) {
    return _then(
      _$RecordImpl(
        recordData: freezed == recordData
            ? _value.recordData
            : recordData // ignore: cast_nullable_to_non_nullable
                  as RecordData?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RecordImpl implements _Record {
  const _$RecordImpl({@JsonKey(name: 'recordData') this.recordData});

  factory _$RecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecordImplFromJson(json);

  @override
  @JsonKey(name: 'recordData')
  final RecordData? recordData;

  @override
  String toString() {
    return 'Record(recordData: $recordData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordImpl &&
            (identical(other.recordData, recordData) ||
                other.recordData == recordData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, recordData);

  /// Create a copy of Record
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordImplCopyWith<_$RecordImpl> get copyWith =>
      __$$RecordImplCopyWithImpl<_$RecordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecordImplToJson(this);
  }
}

abstract class _Record implements Record {
  const factory _Record({
    @JsonKey(name: 'recordData') final RecordData? recordData,
  }) = _$RecordImpl;

  factory _Record.fromJson(Map<String, dynamic> json) = _$RecordImpl.fromJson;

  @override
  @JsonKey(name: 'recordData')
  RecordData? get recordData;

  /// Create a copy of Record
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordImplCopyWith<_$RecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RecordData _$RecordDataFromJson(Map<String, dynamic> json) {
  return _RecordData.fromJson(json);
}

/// @nodoc
mixin _$RecordData {
  @JsonKey(name: 'srw_dc:dc')
  DublinCore? get dc => throw _privateConstructorUsedError;

  /// Serializes this RecordData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecordData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecordDataCopyWith<RecordData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordDataCopyWith<$Res> {
  factory $RecordDataCopyWith(
    RecordData value,
    $Res Function(RecordData) then,
  ) = _$RecordDataCopyWithImpl<$Res, RecordData>;
  @useResult
  $Res call({@JsonKey(name: 'srw_dc:dc') DublinCore? dc});

  $DublinCoreCopyWith<$Res>? get dc;
}

/// @nodoc
class _$RecordDataCopyWithImpl<$Res, $Val extends RecordData>
    implements $RecordDataCopyWith<$Res> {
  _$RecordDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecordData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? dc = freezed}) {
    return _then(
      _value.copyWith(
            dc: freezed == dc
                ? _value.dc
                : dc // ignore: cast_nullable_to_non_nullable
                      as DublinCore?,
          )
          as $Val,
    );
  }

  /// Create a copy of RecordData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DublinCoreCopyWith<$Res>? get dc {
    if (_value.dc == null) {
      return null;
    }

    return $DublinCoreCopyWith<$Res>(_value.dc!, (value) {
      return _then(_value.copyWith(dc: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecordDataImplCopyWith<$Res>
    implements $RecordDataCopyWith<$Res> {
  factory _$$RecordDataImplCopyWith(
    _$RecordDataImpl value,
    $Res Function(_$RecordDataImpl) then,
  ) = __$$RecordDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'srw_dc:dc') DublinCore? dc});

  @override
  $DublinCoreCopyWith<$Res>? get dc;
}

/// @nodoc
class __$$RecordDataImplCopyWithImpl<$Res>
    extends _$RecordDataCopyWithImpl<$Res, _$RecordDataImpl>
    implements _$$RecordDataImplCopyWith<$Res> {
  __$$RecordDataImplCopyWithImpl(
    _$RecordDataImpl _value,
    $Res Function(_$RecordDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RecordData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? dc = freezed}) {
    return _then(
      _$RecordDataImpl(
        dc: freezed == dc
            ? _value.dc
            : dc // ignore: cast_nullable_to_non_nullable
                  as DublinCore?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RecordDataImpl implements _RecordData {
  const _$RecordDataImpl({@JsonKey(name: 'srw_dc:dc') this.dc});

  factory _$RecordDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecordDataImplFromJson(json);

  @override
  @JsonKey(name: 'srw_dc:dc')
  final DublinCore? dc;

  @override
  String toString() {
    return 'RecordData(dc: $dc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordDataImpl &&
            (identical(other.dc, dc) || other.dc == dc));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dc);

  /// Create a copy of RecordData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordDataImplCopyWith<_$RecordDataImpl> get copyWith =>
      __$$RecordDataImplCopyWithImpl<_$RecordDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecordDataImplToJson(this);
  }
}

abstract class _RecordData implements RecordData {
  const factory _RecordData({
    @JsonKey(name: 'srw_dc:dc') final DublinCore? dc,
  }) = _$RecordDataImpl;

  factory _RecordData.fromJson(Map<String, dynamic> json) =
      _$RecordDataImpl.fromJson;

  @override
  @JsonKey(name: 'srw_dc:dc')
  DublinCore? get dc;

  /// Create a copy of RecordData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordDataImplCopyWith<_$RecordDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DublinCore _$DublinCoreFromJson(Map<String, dynamic> json) {
  return _DublinCore.fromJson(json);
}

/// @nodoc
mixin _$DublinCore {
  @JsonKey(name: 'dc:title')
  dynamic get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'dc:creator')
  dynamic get creator => throw _privateConstructorUsedError;
  @JsonKey(name: 'dc:publisher')
  dynamic get publisher => throw _privateConstructorUsedError;
  @JsonKey(name: 'dc:date')
  dynamic get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'dc:identifier')
  dynamic get identifier => throw _privateConstructorUsedError;
  @JsonKey(name: 'dc:description')
  dynamic get description => throw _privateConstructorUsedError;

  /// Serializes this DublinCore to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DublinCore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DublinCoreCopyWith<DublinCore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DublinCoreCopyWith<$Res> {
  factory $DublinCoreCopyWith(
    DublinCore value,
    $Res Function(DublinCore) then,
  ) = _$DublinCoreCopyWithImpl<$Res, DublinCore>;
  @useResult
  $Res call({
    @JsonKey(name: 'dc:title') dynamic title,
    @JsonKey(name: 'dc:creator') dynamic creator,
    @JsonKey(name: 'dc:publisher') dynamic publisher,
    @JsonKey(name: 'dc:date') dynamic date,
    @JsonKey(name: 'dc:identifier') dynamic identifier,
    @JsonKey(name: 'dc:description') dynamic description,
  });
}

/// @nodoc
class _$DublinCoreCopyWithImpl<$Res, $Val extends DublinCore>
    implements $DublinCoreCopyWith<$Res> {
  _$DublinCoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DublinCore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? creator = freezed,
    Object? publisher = freezed,
    Object? date = freezed,
    Object? identifier = freezed,
    Object? description = freezed,
  }) {
    return _then(
      _value.copyWith(
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            creator: freezed == creator
                ? _value.creator
                : creator // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            publisher: freezed == publisher
                ? _value.publisher
                : publisher // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            date: freezed == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            identifier: freezed == identifier
                ? _value.identifier
                : identifier // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as dynamic,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DublinCoreImplCopyWith<$Res>
    implements $DublinCoreCopyWith<$Res> {
  factory _$$DublinCoreImplCopyWith(
    _$DublinCoreImpl value,
    $Res Function(_$DublinCoreImpl) then,
  ) = __$$DublinCoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'dc:title') dynamic title,
    @JsonKey(name: 'dc:creator') dynamic creator,
    @JsonKey(name: 'dc:publisher') dynamic publisher,
    @JsonKey(name: 'dc:date') dynamic date,
    @JsonKey(name: 'dc:identifier') dynamic identifier,
    @JsonKey(name: 'dc:description') dynamic description,
  });
}

/// @nodoc
class __$$DublinCoreImplCopyWithImpl<$Res>
    extends _$DublinCoreCopyWithImpl<$Res, _$DublinCoreImpl>
    implements _$$DublinCoreImplCopyWith<$Res> {
  __$$DublinCoreImplCopyWithImpl(
    _$DublinCoreImpl _value,
    $Res Function(_$DublinCoreImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DublinCore
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? creator = freezed,
    Object? publisher = freezed,
    Object? date = freezed,
    Object? identifier = freezed,
    Object? description = freezed,
  }) {
    return _then(
      _$DublinCoreImpl(
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        creator: freezed == creator
            ? _value.creator
            : creator // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        publisher: freezed == publisher
            ? _value.publisher
            : publisher // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        date: freezed == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        identifier: freezed == identifier
            ? _value.identifier
            : identifier // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as dynamic,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DublinCoreImpl implements _DublinCore {
  const _$DublinCoreImpl({
    @JsonKey(name: 'dc:title') this.title,
    @JsonKey(name: 'dc:creator') this.creator,
    @JsonKey(name: 'dc:publisher') this.publisher,
    @JsonKey(name: 'dc:date') this.date,
    @JsonKey(name: 'dc:identifier') this.identifier,
    @JsonKey(name: 'dc:description') this.description,
  });

  factory _$DublinCoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$DublinCoreImplFromJson(json);

  @override
  @JsonKey(name: 'dc:title')
  final dynamic title;
  @override
  @JsonKey(name: 'dc:creator')
  final dynamic creator;
  @override
  @JsonKey(name: 'dc:publisher')
  final dynamic publisher;
  @override
  @JsonKey(name: 'dc:date')
  final dynamic date;
  @override
  @JsonKey(name: 'dc:identifier')
  final dynamic identifier;
  @override
  @JsonKey(name: 'dc:description')
  final dynamic description;

  @override
  String toString() {
    return 'DublinCore(title: $title, creator: $creator, publisher: $publisher, date: $date, identifier: $identifier, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DublinCoreImpl &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.creator, creator) &&
            const DeepCollectionEquality().equals(other.publisher, publisher) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(
              other.identifier,
              identifier,
            ) &&
            const DeepCollectionEquality().equals(
              other.description,
              description,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(title),
    const DeepCollectionEquality().hash(creator),
    const DeepCollectionEquality().hash(publisher),
    const DeepCollectionEquality().hash(date),
    const DeepCollectionEquality().hash(identifier),
    const DeepCollectionEquality().hash(description),
  );

  /// Create a copy of DublinCore
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DublinCoreImplCopyWith<_$DublinCoreImpl> get copyWith =>
      __$$DublinCoreImplCopyWithImpl<_$DublinCoreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DublinCoreImplToJson(this);
  }
}

abstract class _DublinCore implements DublinCore {
  const factory _DublinCore({
    @JsonKey(name: 'dc:title') final dynamic title,
    @JsonKey(name: 'dc:creator') final dynamic creator,
    @JsonKey(name: 'dc:publisher') final dynamic publisher,
    @JsonKey(name: 'dc:date') final dynamic date,
    @JsonKey(name: 'dc:identifier') final dynamic identifier,
    @JsonKey(name: 'dc:description') final dynamic description,
  }) = _$DublinCoreImpl;

  factory _DublinCore.fromJson(Map<String, dynamic> json) =
      _$DublinCoreImpl.fromJson;

  @override
  @JsonKey(name: 'dc:title')
  dynamic get title;
  @override
  @JsonKey(name: 'dc:creator')
  dynamic get creator;
  @override
  @JsonKey(name: 'dc:publisher')
  dynamic get publisher;
  @override
  @JsonKey(name: 'dc:date')
  dynamic get date;
  @override
  @JsonKey(name: 'dc:identifier')
  dynamic get identifier;
  @override
  @JsonKey(name: 'dc:description')
  dynamic get description;

  /// Create a copy of DublinCore
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DublinCoreImplCopyWith<_$DublinCoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

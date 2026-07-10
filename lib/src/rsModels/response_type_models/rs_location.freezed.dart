// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rs_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  String get rsPeerId => throw _privateConstructorUsedError;
  String get rsGpgId => throw _privateConstructorUsedError;
  String get accountName => throw _privateConstructorUsedError;
  String get locationName => throw _privateConstructorUsedError;
  bool get isOnline => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  String get statusMessage => throw _privateConstructorUsedError;

  /// Serializes this Location to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call(
      {String rsPeerId,
      String rsGpgId,
      String accountName,
      String locationName,
      bool isOnline,
      int status,
      String statusMessage});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rsPeerId = null,
    Object? rsGpgId = null,
    Object? accountName = null,
    Object? locationName = null,
    Object? isOnline = null,
    Object? status = null,
    Object? statusMessage = null,
  }) {
    return _then(_value.copyWith(
      rsPeerId: null == rsPeerId
          ? _value.rsPeerId
          : rsPeerId // ignore: cast_nullable_to_non_nullable
              as String,
      rsGpgId: null == rsGpgId
          ? _value.rsGpgId
          : rsGpgId // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      locationName: null == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      statusMessage: null == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String rsPeerId,
      String rsGpgId,
      String accountName,
      String locationName,
      bool isOnline,
      int status,
      String statusMessage});
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rsPeerId = null,
    Object? rsGpgId = null,
    Object? accountName = null,
    Object? locationName = null,
    Object? isOnline = null,
    Object? status = null,
    Object? statusMessage = null,
  }) {
    return _then(_$LocationImpl(
      rsPeerId: null == rsPeerId
          ? _value.rsPeerId
          : rsPeerId // ignore: cast_nullable_to_non_nullable
              as String,
      rsGpgId: null == rsGpgId
          ? _value.rsGpgId
          : rsGpgId // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      locationName: null == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      statusMessage: null == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl implements _Location {
  const _$LocationImpl(
      {this.rsPeerId = '',
      this.rsGpgId = '',
      this.accountName = '',
      this.locationName = '',
      this.isOnline = false,
      this.status = 0,
      this.statusMessage = ''});

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  @JsonKey()
  final String rsPeerId;
  @override
  @JsonKey()
  final String rsGpgId;
  @override
  @JsonKey()
  final String accountName;
  @override
  @JsonKey()
  final String locationName;
  @override
  @JsonKey()
  final bool isOnline;
  @override
  @JsonKey()
  final int status;
  @override
  @JsonKey()
  final String statusMessage;

  @override
  String toString() {
    return 'Location(rsPeerId: $rsPeerId, rsGpgId: $rsGpgId, accountName: $accountName, locationName: $locationName, isOnline: $isOnline, status: $status, statusMessage: $statusMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.rsPeerId, rsPeerId) ||
                other.rsPeerId == rsPeerId) &&
            (identical(other.rsGpgId, rsGpgId) || other.rsGpgId == rsGpgId) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rsPeerId, rsGpgId, accountName,
      locationName, isOnline, status, statusMessage);

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {final String rsPeerId,
      final String rsGpgId,
      final String accountName,
      final String locationName,
      final bool isOnline,
      final int status,
      final String statusMessage}) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  String get rsPeerId;
  @override
  String get rsGpgId;
  @override
  String get accountName;
  @override
  String get locationName;
  @override
  bool get isOnline;
  @override
  int get status;
  @override
  String get statusMessage;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'req_request_identity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReqRequestIdentity _$ReqRequestIdentityFromJson(Map<String, dynamic> json) {
  return _ReqRequestIdentity.fromJson(json);
}

/// @nodoc
mixin _$ReqRequestIdentity {
  String? get id => throw _privateConstructorUsedError;
  List<String> get peers => throw _privateConstructorUsedError;

  /// Serializes this ReqRequestIdentity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReqRequestIdentity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReqRequestIdentityCopyWith<ReqRequestIdentity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqRequestIdentityCopyWith<$Res> {
  factory $ReqRequestIdentityCopyWith(
          ReqRequestIdentity value, $Res Function(ReqRequestIdentity) then) =
      _$ReqRequestIdentityCopyWithImpl<$Res, ReqRequestIdentity>;
  @useResult
  $Res call({String? id, List<String> peers});
}

/// @nodoc
class _$ReqRequestIdentityCopyWithImpl<$Res, $Val extends ReqRequestIdentity>
    implements $ReqRequestIdentityCopyWith<$Res> {
  _$ReqRequestIdentityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReqRequestIdentity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? peers = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      peers: null == peers
          ? _value.peers
          : peers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReqRequestIdentityImplCopyWith<$Res>
    implements $ReqRequestIdentityCopyWith<$Res> {
  factory _$$ReqRequestIdentityImplCopyWith(_$ReqRequestIdentityImpl value,
          $Res Function(_$ReqRequestIdentityImpl) then) =
      __$$ReqRequestIdentityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, List<String> peers});
}

/// @nodoc
class __$$ReqRequestIdentityImplCopyWithImpl<$Res>
    extends _$ReqRequestIdentityCopyWithImpl<$Res, _$ReqRequestIdentityImpl>
    implements _$$ReqRequestIdentityImplCopyWith<$Res> {
  __$$ReqRequestIdentityImplCopyWithImpl(_$ReqRequestIdentityImpl _value,
      $Res Function(_$ReqRequestIdentityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReqRequestIdentity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? peers = null,
  }) {
    return _then(_$ReqRequestIdentityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      peers: null == peers
          ? _value._peers
          : peers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReqRequestIdentityImpl implements _ReqRequestIdentity {
  const _$ReqRequestIdentityImpl({this.id, final List<String> peers = const []})
      : _peers = peers;

  factory _$ReqRequestIdentityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReqRequestIdentityImplFromJson(json);

  @override
  final String? id;
  final List<String> _peers;
  @override
  @JsonKey()
  List<String> get peers {
    if (_peers is EqualUnmodifiableListView) return _peers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_peers);
  }

  @override
  String toString() {
    return 'ReqRequestIdentity(id: $id, peers: $peers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReqRequestIdentityImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._peers, _peers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_peers));

  /// Create a copy of ReqRequestIdentity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReqRequestIdentityImplCopyWith<_$ReqRequestIdentityImpl> get copyWith =>
      __$$ReqRequestIdentityImplCopyWithImpl<_$ReqRequestIdentityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReqRequestIdentityImplToJson(
      this,
    );
  }
}

abstract class _ReqRequestIdentity implements ReqRequestIdentity {
  const factory _ReqRequestIdentity(
      {final String? id, final List<String> peers}) = _$ReqRequestIdentityImpl;

  factory _ReqRequestIdentity.fromJson(Map<String, dynamic> json) =
      _$ReqRequestIdentityImpl.fromJson;

  @override
  String? get id;
  @override
  List<String> get peers;

  /// Create a copy of ReqRequestIdentity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReqRequestIdentityImplCopyWith<_$ReqRequestIdentityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

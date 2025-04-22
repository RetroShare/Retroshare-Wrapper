// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rs_identity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Identity _$IdentityFromJson(Map<String, dynamic> json) {
  return _Identity.fromJson(json);
}

/// @nodoc
mixin _$Identity {
  String get mId => throw _privateConstructorUsedError; // RsGxsId
  String? get pgpId => throw _privateConstructorUsedError; // RspgpID
  String? get name => throw _privateConstructorUsedError;
  String? get avatar =>
      throw _privateConstructorUsedError; // This is an alias for _avatar field
  bool get signed => throw _privateConstructorUsedError;
  bool get isContact => throw _privateConstructorUsedError;

  /// Serializes this Identity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Identity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IdentityCopyWith<Identity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentityCopyWith<$Res> {
  factory $IdentityCopyWith(Identity value, $Res Function(Identity) then) =
      _$IdentityCopyWithImpl<$Res, Identity>;
  @useResult
  $Res call(
      {String mId,
      String? pgpId,
      String? name,
      String? avatar,
      bool signed,
      bool isContact});
}

/// @nodoc
class _$IdentityCopyWithImpl<$Res, $Val extends Identity>
    implements $IdentityCopyWith<$Res> {
  _$IdentityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Identity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mId = null,
    Object? pgpId = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
    Object? signed = null,
    Object? isContact = null,
  }) {
    return _then(_value.copyWith(
      mId: null == mId
          ? _value.mId
          : mId // ignore: cast_nullable_to_non_nullable
              as String,
      pgpId: freezed == pgpId
          ? _value.pgpId
          : pgpId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      signed: null == signed
          ? _value.signed
          : signed // ignore: cast_nullable_to_non_nullable
              as bool,
      isContact: null == isContact
          ? _value.isContact
          : isContact // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdentityImplCopyWith<$Res>
    implements $IdentityCopyWith<$Res> {
  factory _$$IdentityImplCopyWith(
          _$IdentityImpl value, $Res Function(_$IdentityImpl) then) =
      __$$IdentityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String mId,
      String? pgpId,
      String? name,
      String? avatar,
      bool signed,
      bool isContact});
}

/// @nodoc
class __$$IdentityImplCopyWithImpl<$Res>
    extends _$IdentityCopyWithImpl<$Res, _$IdentityImpl>
    implements _$$IdentityImplCopyWith<$Res> {
  __$$IdentityImplCopyWithImpl(
      _$IdentityImpl _value, $Res Function(_$IdentityImpl) _then)
      : super(_value, _then);

  /// Create a copy of Identity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mId = null,
    Object? pgpId = freezed,
    Object? name = freezed,
    Object? avatar = freezed,
    Object? signed = null,
    Object? isContact = null,
  }) {
    return _then(_$IdentityImpl(
      mId: null == mId
          ? _value.mId
          : mId // ignore: cast_nullable_to_non_nullable
              as String,
      pgpId: freezed == pgpId
          ? _value.pgpId
          : pgpId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      signed: null == signed
          ? _value.signed
          : signed // ignore: cast_nullable_to_non_nullable
              as bool,
      isContact: null == isContact
          ? _value.isContact
          : isContact // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IdentityImpl implements _Identity {
  const _$IdentityImpl(
      {required this.mId,
      this.pgpId,
      this.name,
      this.avatar,
      required this.signed,
      required this.isContact});

  factory _$IdentityImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdentityImplFromJson(json);

  @override
  final String mId;
// RsGxsId
  @override
  final String? pgpId;
// RspgpID
  @override
  final String? name;
  @override
  final String? avatar;
// This is an alias for _avatar field
  @override
  final bool signed;
  @override
  final bool isContact;

  @override
  String toString() {
    return 'Identity(mId: $mId, pgpId: $pgpId, name: $name, avatar: $avatar, signed: $signed, isContact: $isContact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdentityImpl &&
            (identical(other.mId, mId) || other.mId == mId) &&
            (identical(other.pgpId, pgpId) || other.pgpId == pgpId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.signed, signed) || other.signed == signed) &&
            (identical(other.isContact, isContact) ||
                other.isContact == isContact));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, mId, pgpId, name, avatar, signed, isContact);

  /// Create a copy of Identity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdentityImplCopyWith<_$IdentityImpl> get copyWith =>
      __$$IdentityImplCopyWithImpl<_$IdentityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdentityImplToJson(
      this,
    );
  }
}

abstract class _Identity implements Identity {
  const factory _Identity(
      {required final String mId,
      final String? pgpId,
      final String? name,
      final String? avatar,
      required final bool signed,
      required final bool isContact}) = _$IdentityImpl;

  factory _Identity.fromJson(Map<String, dynamic> json) =
      _$IdentityImpl.fromJson;

  @override
  String get mId; // RsGxsId
  @override
  String? get pgpId; // RspgpID
  @override
  String? get name;
  @override
  String? get avatar; // This is an alias for _avatar field
  @override
  bool get signed;
  @override
  bool get isContact;

  /// Create a copy of Identity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdentityImplCopyWith<_$IdentityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

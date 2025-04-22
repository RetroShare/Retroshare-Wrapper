// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_lobby_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatLobbyId _$ChatLobbyIdFromJson(Map<String, dynamic> json) {
  return _ChatLobbyId.fromJson(json);
}

/// @nodoc
mixin _$ChatLobbyId {
  num? get xint64 => throw _privateConstructorUsedError;
  String? get xstr64 => throw _privateConstructorUsedError;

  /// Serializes this ChatLobbyId to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatLobbyId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatLobbyIdCopyWith<ChatLobbyId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatLobbyIdCopyWith<$Res> {
  factory $ChatLobbyIdCopyWith(
          ChatLobbyId value, $Res Function(ChatLobbyId) then) =
      _$ChatLobbyIdCopyWithImpl<$Res, ChatLobbyId>;
  @useResult
  $Res call({num? xint64, String? xstr64});
}

/// @nodoc
class _$ChatLobbyIdCopyWithImpl<$Res, $Val extends ChatLobbyId>
    implements $ChatLobbyIdCopyWith<$Res> {
  _$ChatLobbyIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatLobbyId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xint64 = freezed,
    Object? xstr64 = freezed,
  }) {
    return _then(_value.copyWith(
      xint64: freezed == xint64
          ? _value.xint64
          : xint64 // ignore: cast_nullable_to_non_nullable
              as num?,
      xstr64: freezed == xstr64
          ? _value.xstr64
          : xstr64 // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatLobbyIdImplCopyWith<$Res>
    implements $ChatLobbyIdCopyWith<$Res> {
  factory _$$ChatLobbyIdImplCopyWith(
          _$ChatLobbyIdImpl value, $Res Function(_$ChatLobbyIdImpl) then) =
      __$$ChatLobbyIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num? xint64, String? xstr64});
}

/// @nodoc
class __$$ChatLobbyIdImplCopyWithImpl<$Res>
    extends _$ChatLobbyIdCopyWithImpl<$Res, _$ChatLobbyIdImpl>
    implements _$$ChatLobbyIdImplCopyWith<$Res> {
  __$$ChatLobbyIdImplCopyWithImpl(
      _$ChatLobbyIdImpl _value, $Res Function(_$ChatLobbyIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatLobbyId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xint64 = freezed,
    Object? xstr64 = freezed,
  }) {
    return _then(_$ChatLobbyIdImpl(
      xint64: freezed == xint64
          ? _value.xint64
          : xint64 // ignore: cast_nullable_to_non_nullable
              as num?,
      xstr64: freezed == xstr64
          ? _value.xstr64
          : xstr64 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatLobbyIdImpl implements _ChatLobbyId {
  const _$ChatLobbyIdImpl({this.xint64, this.xstr64});

  factory _$ChatLobbyIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatLobbyIdImplFromJson(json);

  @override
  final num? xint64;
  @override
  final String? xstr64;

  @override
  String toString() {
    return 'ChatLobbyId(xint64: $xint64, xstr64: $xstr64)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatLobbyIdImpl &&
            (identical(other.xint64, xint64) || other.xint64 == xint64) &&
            (identical(other.xstr64, xstr64) || other.xstr64 == xstr64));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, xint64, xstr64);

  /// Create a copy of ChatLobbyId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatLobbyIdImplCopyWith<_$ChatLobbyIdImpl> get copyWith =>
      __$$ChatLobbyIdImplCopyWithImpl<_$ChatLobbyIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatLobbyIdImplToJson(
      this,
    );
  }
}

abstract class _ChatLobbyId implements ChatLobbyId {
  const factory _ChatLobbyId({final num? xint64, final String? xstr64}) =
      _$ChatLobbyIdImpl;

  factory _ChatLobbyId.fromJson(Map<String, dynamic> json) =
      _$ChatLobbyIdImpl.fromJson;

  @override
  num? get xint64;
  @override
  String? get xstr64;

  /// Create a copy of ChatLobbyId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatLobbyIdImplCopyWith<_$ChatLobbyIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

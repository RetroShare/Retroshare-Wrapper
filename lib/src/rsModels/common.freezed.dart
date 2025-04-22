// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RsInt64 _$RsInt64FromJson(Map<String, dynamic> json) {
  return _RsInt64.fromJson(json);
}

/// @nodoc
mixin _$RsInt64 {
  String get xstr64 => throw _privateConstructorUsedError;
  int get xint64 => throw _privateConstructorUsedError;

  /// Serializes this RsInt64 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RsInt64
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RsInt64CopyWith<RsInt64> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RsInt64CopyWith<$Res> {
  factory $RsInt64CopyWith(RsInt64 value, $Res Function(RsInt64) then) =
      _$RsInt64CopyWithImpl<$Res, RsInt64>;
  @useResult
  $Res call({String xstr64, int xint64});
}

/// @nodoc
class _$RsInt64CopyWithImpl<$Res, $Val extends RsInt64>
    implements $RsInt64CopyWith<$Res> {
  _$RsInt64CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RsInt64
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xstr64 = null,
    Object? xint64 = null,
  }) {
    return _then(_value.copyWith(
      xstr64: null == xstr64
          ? _value.xstr64
          : xstr64 // ignore: cast_nullable_to_non_nullable
              as String,
      xint64: null == xint64
          ? _value.xint64
          : xint64 // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RsInt64ImplCopyWith<$Res> implements $RsInt64CopyWith<$Res> {
  factory _$$RsInt64ImplCopyWith(
          _$RsInt64Impl value, $Res Function(_$RsInt64Impl) then) =
      __$$RsInt64ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String xstr64, int xint64});
}

/// @nodoc
class __$$RsInt64ImplCopyWithImpl<$Res>
    extends _$RsInt64CopyWithImpl<$Res, _$RsInt64Impl>
    implements _$$RsInt64ImplCopyWith<$Res> {
  __$$RsInt64ImplCopyWithImpl(
      _$RsInt64Impl _value, $Res Function(_$RsInt64Impl) _then)
      : super(_value, _then);

  /// Create a copy of RsInt64
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xstr64 = null,
    Object? xint64 = null,
  }) {
    return _then(_$RsInt64Impl(
      xstr64: null == xstr64
          ? _value.xstr64
          : xstr64 // ignore: cast_nullable_to_non_nullable
              as String,
      xint64: null == xint64
          ? _value.xint64
          : xint64 // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RsInt64Impl extends _RsInt64 {
  const _$RsInt64Impl({this.xstr64 = '0', this.xint64 = 0}) : super._();

  factory _$RsInt64Impl.fromJson(Map<String, dynamic> json) =>
      _$$RsInt64ImplFromJson(json);

  @override
  @JsonKey()
  final String xstr64;
  @override
  @JsonKey()
  final int xint64;

  @override
  String toString() {
    return 'RsInt64(xstr64: $xstr64, xint64: $xint64)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RsInt64Impl &&
            (identical(other.xstr64, xstr64) || other.xstr64 == xstr64) &&
            (identical(other.xint64, xint64) || other.xint64 == xint64));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, xstr64, xint64);

  /// Create a copy of RsInt64
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RsInt64ImplCopyWith<_$RsInt64Impl> get copyWith =>
      __$$RsInt64ImplCopyWithImpl<_$RsInt64Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RsInt64ImplToJson(
      this,
    );
  }
}

abstract class _RsInt64 extends RsInt64 {
  const factory _RsInt64({final String xstr64, final int xint64}) =
      _$RsInt64Impl;
  const _RsInt64._() : super._();

  factory _RsInt64.fromJson(Map<String, dynamic> json) = _$RsInt64Impl.fromJson;

  @override
  String get xstr64;
  @override
  int get xint64;

  /// Create a copy of RsInt64
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RsInt64ImplCopyWith<_$RsInt64Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

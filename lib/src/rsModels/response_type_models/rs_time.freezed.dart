// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rs_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RstimeT _$RstimeTFromJson(Map<String, dynamic> json) {
  return _RstimeT.fromJson(json);
}

/// @nodoc
mixin _$RstimeT {
  num? get xint64 => throw _privateConstructorUsedError;
  String? get xstr64 => throw _privateConstructorUsedError;

  /// Serializes this RstimeT to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RstimeT
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RstimeTCopyWith<RstimeT> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RstimeTCopyWith<$Res> {
  factory $RstimeTCopyWith(RstimeT value, $Res Function(RstimeT) then) =
      _$RstimeTCopyWithImpl<$Res, RstimeT>;
  @useResult
  $Res call({num? xint64, String? xstr64});
}

/// @nodoc
class _$RstimeTCopyWithImpl<$Res, $Val extends RstimeT>
    implements $RstimeTCopyWith<$Res> {
  _$RstimeTCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RstimeT
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
abstract class _$$RstimeTImplCopyWith<$Res> implements $RstimeTCopyWith<$Res> {
  factory _$$RstimeTImplCopyWith(
          _$RstimeTImpl value, $Res Function(_$RstimeTImpl) then) =
      __$$RstimeTImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num? xint64, String? xstr64});
}

/// @nodoc
class __$$RstimeTImplCopyWithImpl<$Res>
    extends _$RstimeTCopyWithImpl<$Res, _$RstimeTImpl>
    implements _$$RstimeTImplCopyWith<$Res> {
  __$$RstimeTImplCopyWithImpl(
      _$RstimeTImpl _value, $Res Function(_$RstimeTImpl) _then)
      : super(_value, _then);

  /// Create a copy of RstimeT
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xint64 = freezed,
    Object? xstr64 = freezed,
  }) {
    return _then(_$RstimeTImpl(
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
class _$RstimeTImpl implements _RstimeT {
  const _$RstimeTImpl({this.xint64, this.xstr64});

  factory _$RstimeTImpl.fromJson(Map<String, dynamic> json) =>
      _$$RstimeTImplFromJson(json);

  @override
  final num? xint64;
  @override
  final String? xstr64;

  @override
  String toString() {
    return 'RstimeT(xint64: $xint64, xstr64: $xstr64)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RstimeTImpl &&
            (identical(other.xint64, xint64) || other.xint64 == xint64) &&
            (identical(other.xstr64, xstr64) || other.xstr64 == xstr64));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, xint64, xstr64);

  /// Create a copy of RstimeT
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RstimeTImplCopyWith<_$RstimeTImpl> get copyWith =>
      __$$RstimeTImplCopyWithImpl<_$RstimeTImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RstimeTImplToJson(
      this,
    );
  }
}

abstract class _RstimeT implements RstimeT {
  const factory _RstimeT({final num? xint64, final String? xstr64}) =
      _$RstimeTImpl;

  factory _RstimeT.fromJson(Map<String, dynamic> json) = _$RstimeTImpl.fromJson;

  @override
  num? get xint64;
  @override
  String? get xstr64;

  /// Create a copy of RstimeT
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RstimeTImplCopyWith<_$RstimeTImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

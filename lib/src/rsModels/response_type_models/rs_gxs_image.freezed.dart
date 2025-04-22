// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rs_gxs_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RsGxsImage {
  int? get mSize => throw _privateConstructorUsedError;
  Uint8List? get mData => throw _privateConstructorUsedError;
  String? get base64String => throw _privateConstructorUsedError;

  /// Create a copy of RsGxsImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RsGxsImageCopyWith<RsGxsImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RsGxsImageCopyWith<$Res> {
  factory $RsGxsImageCopyWith(
          RsGxsImage value, $Res Function(RsGxsImage) then) =
      _$RsGxsImageCopyWithImpl<$Res, RsGxsImage>;
  @useResult
  $Res call({int? mSize, Uint8List? mData, String? base64String});
}

/// @nodoc
class _$RsGxsImageCopyWithImpl<$Res, $Val extends RsGxsImage>
    implements $RsGxsImageCopyWith<$Res> {
  _$RsGxsImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RsGxsImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mSize = freezed,
    Object? mData = freezed,
    Object? base64String = freezed,
  }) {
    return _then(_value.copyWith(
      mSize: freezed == mSize
          ? _value.mSize
          : mSize // ignore: cast_nullable_to_non_nullable
              as int?,
      mData: freezed == mData
          ? _value.mData
          : mData // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      base64String: freezed == base64String
          ? _value.base64String
          : base64String // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RsGxsImageImplCopyWith<$Res>
    implements $RsGxsImageCopyWith<$Res> {
  factory _$$RsGxsImageImplCopyWith(
          _$RsGxsImageImpl value, $Res Function(_$RsGxsImageImpl) then) =
      __$$RsGxsImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? mSize, Uint8List? mData, String? base64String});
}

/// @nodoc
class __$$RsGxsImageImplCopyWithImpl<$Res>
    extends _$RsGxsImageCopyWithImpl<$Res, _$RsGxsImageImpl>
    implements _$$RsGxsImageImplCopyWith<$Res> {
  __$$RsGxsImageImplCopyWithImpl(
      _$RsGxsImageImpl _value, $Res Function(_$RsGxsImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of RsGxsImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mSize = freezed,
    Object? mData = freezed,
    Object? base64String = freezed,
  }) {
    return _then(_$RsGxsImageImpl(
      mSize: freezed == mSize
          ? _value.mSize
          : mSize // ignore: cast_nullable_to_non_nullable
              as int?,
      mData: freezed == mData
          ? _value.mData
          : mData // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
      base64String: freezed == base64String
          ? _value.base64String
          : base64String // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RsGxsImageImpl extends _RsGxsImage {
  const _$RsGxsImageImpl({this.mSize, this.mData, this.base64String})
      : assert(mData != null || base64String != null,
            'Either mData or base64String must be provided'),
        super._();

  @override
  final int? mSize;
  @override
  final Uint8List? mData;
  @override
  final String? base64String;

  @override
  String toString() {
    return 'RsGxsImage(mSize: $mSize, mData: $mData, base64String: $base64String)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RsGxsImageImpl &&
            (identical(other.mSize, mSize) || other.mSize == mSize) &&
            const DeepCollectionEquality().equals(other.mData, mData) &&
            (identical(other.base64String, base64String) ||
                other.base64String == base64String));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mSize,
      const DeepCollectionEquality().hash(mData), base64String);

  /// Create a copy of RsGxsImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RsGxsImageImplCopyWith<_$RsGxsImageImpl> get copyWith =>
      __$$RsGxsImageImplCopyWithImpl<_$RsGxsImageImpl>(this, _$identity);
}

abstract class _RsGxsImage extends RsGxsImage {
  const factory _RsGxsImage(
      {final int? mSize,
      final Uint8List? mData,
      final String? base64String}) = _$RsGxsImageImpl;
  const _RsGxsImage._() : super._();

  @override
  int? get mSize;
  @override
  Uint8List? get mData;
  @override
  String? get base64String;

  /// Create a copy of RsGxsImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RsGxsImageImplCopyWith<_$RsGxsImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

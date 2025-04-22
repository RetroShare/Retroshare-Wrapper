// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rs_files.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DirDetails _$DirDetailsFromJson(Map<String, dynamic> json) {
  return _DirDetails.fromJson(json);
}

/// @nodoc
mixin _$DirDetails {
  List<dynamic> get parent_groups => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get children => throw _privateConstructorUsedError;
  RsInt64 get handle => throw _privateConstructorUsedError;
  RsInt64 get parentHandle => throw _privateConstructorUsedError;
  int get prow => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get hash => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  RsInt64 get size => throw _privateConstructorUsedError;
  int get mtime => throw _privateConstructorUsedError;
  int get flags => throw _privateConstructorUsedError;
  int get max_mtime => throw _privateConstructorUsedError;

  /// Serializes this DirDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DirDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DirDetailsCopyWith<DirDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirDetailsCopyWith<$Res> {
  factory $DirDetailsCopyWith(
          DirDetails value, $Res Function(DirDetails) then) =
      _$DirDetailsCopyWithImpl<$Res, DirDetails>;
  @useResult
  $Res call(
      {List<dynamic> parent_groups,
      List<Map<String, dynamic>> children,
      RsInt64 handle,
      RsInt64 parentHandle,
      int prow,
      int type,
      String id,
      String name,
      String hash,
      String path,
      RsInt64 size,
      int mtime,
      int flags,
      int max_mtime});

  $RsInt64CopyWith<$Res> get handle;
  $RsInt64CopyWith<$Res> get parentHandle;
  $RsInt64CopyWith<$Res> get size;
}

/// @nodoc
class _$DirDetailsCopyWithImpl<$Res, $Val extends DirDetails>
    implements $DirDetailsCopyWith<$Res> {
  _$DirDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DirDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parent_groups = null,
    Object? children = null,
    Object? handle = null,
    Object? parentHandle = null,
    Object? prow = null,
    Object? type = null,
    Object? id = null,
    Object? name = null,
    Object? hash = null,
    Object? path = null,
    Object? size = null,
    Object? mtime = null,
    Object? flags = null,
    Object? max_mtime = null,
  }) {
    return _then(_value.copyWith(
      parent_groups: null == parent_groups
          ? _value.parent_groups
          : parent_groups // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      handle: null == handle
          ? _value.handle
          : handle // ignore: cast_nullable_to_non_nullable
              as RsInt64,
      parentHandle: null == parentHandle
          ? _value.parentHandle
          : parentHandle // ignore: cast_nullable_to_non_nullable
              as RsInt64,
      prow: null == prow
          ? _value.prow
          : prow // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as RsInt64,
      mtime: null == mtime
          ? _value.mtime
          : mtime // ignore: cast_nullable_to_non_nullable
              as int,
      flags: null == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as int,
      max_mtime: null == max_mtime
          ? _value.max_mtime
          : max_mtime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of DirDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RsInt64CopyWith<$Res> get handle {
    return $RsInt64CopyWith<$Res>(_value.handle, (value) {
      return _then(_value.copyWith(handle: value) as $Val);
    });
  }

  /// Create a copy of DirDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RsInt64CopyWith<$Res> get parentHandle {
    return $RsInt64CopyWith<$Res>(_value.parentHandle, (value) {
      return _then(_value.copyWith(parentHandle: value) as $Val);
    });
  }

  /// Create a copy of DirDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RsInt64CopyWith<$Res> get size {
    return $RsInt64CopyWith<$Res>(_value.size, (value) {
      return _then(_value.copyWith(size: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DirDetailsImplCopyWith<$Res>
    implements $DirDetailsCopyWith<$Res> {
  factory _$$DirDetailsImplCopyWith(
          _$DirDetailsImpl value, $Res Function(_$DirDetailsImpl) then) =
      __$$DirDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<dynamic> parent_groups,
      List<Map<String, dynamic>> children,
      RsInt64 handle,
      RsInt64 parentHandle,
      int prow,
      int type,
      String id,
      String name,
      String hash,
      String path,
      RsInt64 size,
      int mtime,
      int flags,
      int max_mtime});

  @override
  $RsInt64CopyWith<$Res> get handle;
  @override
  $RsInt64CopyWith<$Res> get parentHandle;
  @override
  $RsInt64CopyWith<$Res> get size;
}

/// @nodoc
class __$$DirDetailsImplCopyWithImpl<$Res>
    extends _$DirDetailsCopyWithImpl<$Res, _$DirDetailsImpl>
    implements _$$DirDetailsImplCopyWith<$Res> {
  __$$DirDetailsImplCopyWithImpl(
      _$DirDetailsImpl _value, $Res Function(_$DirDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DirDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parent_groups = null,
    Object? children = null,
    Object? handle = null,
    Object? parentHandle = null,
    Object? prow = null,
    Object? type = null,
    Object? id = null,
    Object? name = null,
    Object? hash = null,
    Object? path = null,
    Object? size = null,
    Object? mtime = null,
    Object? flags = null,
    Object? max_mtime = null,
  }) {
    return _then(_$DirDetailsImpl(
      parent_groups: null == parent_groups
          ? _value._parent_groups
          : parent_groups // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      handle: null == handle
          ? _value.handle
          : handle // ignore: cast_nullable_to_non_nullable
              as RsInt64,
      parentHandle: null == parentHandle
          ? _value.parentHandle
          : parentHandle // ignore: cast_nullable_to_non_nullable
              as RsInt64,
      prow: null == prow
          ? _value.prow
          : prow // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as RsInt64,
      mtime: null == mtime
          ? _value.mtime
          : mtime // ignore: cast_nullable_to_non_nullable
              as int,
      flags: null == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as int,
      max_mtime: null == max_mtime
          ? _value.max_mtime
          : max_mtime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DirDetailsImpl implements _DirDetails {
  const _$DirDetailsImpl(
      {required final List<dynamic> parent_groups,
      required final List<Map<String, dynamic>> children,
      required this.handle,
      required this.parentHandle,
      required this.prow,
      required this.type,
      required this.id,
      required this.name,
      required this.hash,
      required this.path,
      required this.size,
      required this.mtime,
      required this.flags,
      required this.max_mtime})
      : _parent_groups = parent_groups,
        _children = children;

  factory _$DirDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DirDetailsImplFromJson(json);

  final List<dynamic> _parent_groups;
  @override
  List<dynamic> get parent_groups {
    if (_parent_groups is EqualUnmodifiableListView) return _parent_groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parent_groups);
  }

  final List<Map<String, dynamic>> _children;
  @override
  List<Map<String, dynamic>> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  final RsInt64 handle;
  @override
  final RsInt64 parentHandle;
  @override
  final int prow;
  @override
  final int type;
  @override
  final String id;
  @override
  final String name;
  @override
  final String hash;
  @override
  final String path;
  @override
  final RsInt64 size;
  @override
  final int mtime;
  @override
  final int flags;
  @override
  final int max_mtime;

  @override
  String toString() {
    return 'DirDetails(parent_groups: $parent_groups, children: $children, handle: $handle, parentHandle: $parentHandle, prow: $prow, type: $type, id: $id, name: $name, hash: $hash, path: $path, size: $size, mtime: $mtime, flags: $flags, max_mtime: $max_mtime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirDetailsImpl &&
            const DeepCollectionEquality()
                .equals(other._parent_groups, _parent_groups) &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            (identical(other.handle, handle) || other.handle == handle) &&
            (identical(other.parentHandle, parentHandle) ||
                other.parentHandle == parentHandle) &&
            (identical(other.prow, prow) || other.prow == prow) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.mtime, mtime) || other.mtime == mtime) &&
            (identical(other.flags, flags) || other.flags == flags) &&
            (identical(other.max_mtime, max_mtime) ||
                other.max_mtime == max_mtime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_parent_groups),
      const DeepCollectionEquality().hash(_children),
      handle,
      parentHandle,
      prow,
      type,
      id,
      name,
      hash,
      path,
      size,
      mtime,
      flags,
      max_mtime);

  /// Create a copy of DirDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DirDetailsImplCopyWith<_$DirDetailsImpl> get copyWith =>
      __$$DirDetailsImplCopyWithImpl<_$DirDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DirDetailsImplToJson(
      this,
    );
  }
}

abstract class _DirDetails implements DirDetails {
  const factory _DirDetails(
      {required final List<dynamic> parent_groups,
      required final List<Map<String, dynamic>> children,
      required final RsInt64 handle,
      required final RsInt64 parentHandle,
      required final int prow,
      required final int type,
      required final String id,
      required final String name,
      required final String hash,
      required final String path,
      required final RsInt64 size,
      required final int mtime,
      required final int flags,
      required final int max_mtime}) = _$DirDetailsImpl;

  factory _DirDetails.fromJson(Map<String, dynamic> json) =
      _$DirDetailsImpl.fromJson;

  @override
  List<dynamic> get parent_groups;
  @override
  List<Map<String, dynamic>> get children;
  @override
  RsInt64 get handle;
  @override
  RsInt64 get parentHandle;
  @override
  int get prow;
  @override
  int get type;
  @override
  String get id;
  @override
  String get name;
  @override
  String get hash;
  @override
  String get path;
  @override
  RsInt64 get size;
  @override
  int get mtime;
  @override
  int get flags;
  @override
  int get max_mtime;

  /// Create a copy of DirDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DirDetailsImplCopyWith<_$DirDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

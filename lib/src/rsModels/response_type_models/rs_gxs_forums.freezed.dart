// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rs_gxs_forums.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RsMsgMetaData _$RsMsgMetaDataFromJson(Map<String, dynamic> json) {
  return _RsMsgMetaData.fromJson(json);
}

/// @nodoc
mixin _$RsMsgMetaData {
  String get mGroupId =>
      throw _privateConstructorUsedError; // ID of the group where the message belongs.
  String get mMsgId => throw _privateConstructorUsedError; // ID of the message.
  String get mThreadId =>
      throw _privateConstructorUsedError; // ID of the thread the message belongs to.
  String get mParentId =>
      throw _privateConstructorUsedError; // Parent message ID (for threads).
  String get mOrigMsgId =>
      throw _privateConstructorUsedError; // Original message ID (if this is a reply).
  String get mAuthorId =>
      throw _privateConstructorUsedError; // ID of the message author.
  String get mMsgName =>
      throw _privateConstructorUsedError; // Name of the message.
  RsInt64 get mPublishTs =>
      throw _privateConstructorUsedError; // Timestamp when the message was published.
  int get mMsgFlags =>
      throw _privateConstructorUsedError; // Message flags indicating specific attributes.
  int get mMsgStatus =>
      throw _privateConstructorUsedError; // Status of the message (e.g., read, unread).
  RsInt64 get mChildTs =>
      throw _privateConstructorUsedError; // Timestamp for child messages (if any).
  String get mServiceString =>
      throw _privateConstructorUsedError; // Free-form string for service-specific data.
  Map<String, dynamic> get rawJson => throw _privateConstructorUsedError;

  /// Serializes this RsMsgMetaData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RsMsgMetaData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RsMsgMetaDataCopyWith<RsMsgMetaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RsMsgMetaDataCopyWith<$Res> {
  factory $RsMsgMetaDataCopyWith(
          RsMsgMetaData value, $Res Function(RsMsgMetaData) then) =
      _$RsMsgMetaDataCopyWithImpl<$Res, RsMsgMetaData>;
  @useResult
  $Res call(
      {String mGroupId,
      String mMsgId,
      String mThreadId,
      String mParentId,
      String mOrigMsgId,
      String mAuthorId,
      String mMsgName,
      RsInt64 mPublishTs,
      int mMsgFlags,
      int mMsgStatus,
      RsInt64 mChildTs,
      String mServiceString,
      Map<String, dynamic> rawJson});

  $RsInt64CopyWith<$Res> get mPublishTs;
  $RsInt64CopyWith<$Res> get mChildTs;
}

/// @nodoc
class _$RsMsgMetaDataCopyWithImpl<$Res, $Val extends RsMsgMetaData>
    implements $RsMsgMetaDataCopyWith<$Res> {
  _$RsMsgMetaDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RsMsgMetaData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mGroupId = null,
    Object? mMsgId = null,
    Object? mThreadId = null,
    Object? mParentId = null,
    Object? mOrigMsgId = null,
    Object? mAuthorId = null,
    Object? mMsgName = null,
    Object? mPublishTs = null,
    Object? mMsgFlags = null,
    Object? mMsgStatus = null,
    Object? mChildTs = null,
    Object? mServiceString = null,
    Object? rawJson = null,
  }) {
    return _then(_value.copyWith(
      mGroupId: null == mGroupId
          ? _value.mGroupId
          : mGroupId // ignore: cast_nullable_to_non_nullable
              as String,
      mMsgId: null == mMsgId
          ? _value.mMsgId
          : mMsgId // ignore: cast_nullable_to_non_nullable
              as String,
      mThreadId: null == mThreadId
          ? _value.mThreadId
          : mThreadId // ignore: cast_nullable_to_non_nullable
              as String,
      mParentId: null == mParentId
          ? _value.mParentId
          : mParentId // ignore: cast_nullable_to_non_nullable
              as String,
      mOrigMsgId: null == mOrigMsgId
          ? _value.mOrigMsgId
          : mOrigMsgId // ignore: cast_nullable_to_non_nullable
              as String,
      mAuthorId: null == mAuthorId
          ? _value.mAuthorId
          : mAuthorId // ignore: cast_nullable_to_non_nullable
              as String,
      mMsgName: null == mMsgName
          ? _value.mMsgName
          : mMsgName // ignore: cast_nullable_to_non_nullable
              as String,
      mPublishTs: null == mPublishTs
          ? _value.mPublishTs
          : mPublishTs // ignore: cast_nullable_to_non_nullable
              as RsInt64,
      mMsgFlags: null == mMsgFlags
          ? _value.mMsgFlags
          : mMsgFlags // ignore: cast_nullable_to_non_nullable
              as int,
      mMsgStatus: null == mMsgStatus
          ? _value.mMsgStatus
          : mMsgStatus // ignore: cast_nullable_to_non_nullable
              as int,
      mChildTs: null == mChildTs
          ? _value.mChildTs
          : mChildTs // ignore: cast_nullable_to_non_nullable
              as RsInt64,
      mServiceString: null == mServiceString
          ? _value.mServiceString
          : mServiceString // ignore: cast_nullable_to_non_nullable
              as String,
      rawJson: null == rawJson
          ? _value.rawJson
          : rawJson // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }

  /// Create a copy of RsMsgMetaData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RsInt64CopyWith<$Res> get mPublishTs {
    return $RsInt64CopyWith<$Res>(_value.mPublishTs, (value) {
      return _then(_value.copyWith(mPublishTs: value) as $Val);
    });
  }

  /// Create a copy of RsMsgMetaData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RsInt64CopyWith<$Res> get mChildTs {
    return $RsInt64CopyWith<$Res>(_value.mChildTs, (value) {
      return _then(_value.copyWith(mChildTs: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RsMsgMetaDataImplCopyWith<$Res>
    implements $RsMsgMetaDataCopyWith<$Res> {
  factory _$$RsMsgMetaDataImplCopyWith(
          _$RsMsgMetaDataImpl value, $Res Function(_$RsMsgMetaDataImpl) then) =
      __$$RsMsgMetaDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String mGroupId,
      String mMsgId,
      String mThreadId,
      String mParentId,
      String mOrigMsgId,
      String mAuthorId,
      String mMsgName,
      RsInt64 mPublishTs,
      int mMsgFlags,
      int mMsgStatus,
      RsInt64 mChildTs,
      String mServiceString,
      Map<String, dynamic> rawJson});

  @override
  $RsInt64CopyWith<$Res> get mPublishTs;
  @override
  $RsInt64CopyWith<$Res> get mChildTs;
}

/// @nodoc
class __$$RsMsgMetaDataImplCopyWithImpl<$Res>
    extends _$RsMsgMetaDataCopyWithImpl<$Res, _$RsMsgMetaDataImpl>
    implements _$$RsMsgMetaDataImplCopyWith<$Res> {
  __$$RsMsgMetaDataImplCopyWithImpl(
      _$RsMsgMetaDataImpl _value, $Res Function(_$RsMsgMetaDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of RsMsgMetaData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mGroupId = null,
    Object? mMsgId = null,
    Object? mThreadId = null,
    Object? mParentId = null,
    Object? mOrigMsgId = null,
    Object? mAuthorId = null,
    Object? mMsgName = null,
    Object? mPublishTs = null,
    Object? mMsgFlags = null,
    Object? mMsgStatus = null,
    Object? mChildTs = null,
    Object? mServiceString = null,
    Object? rawJson = null,
  }) {
    return _then(_$RsMsgMetaDataImpl(
      mGroupId: null == mGroupId
          ? _value.mGroupId
          : mGroupId // ignore: cast_nullable_to_non_nullable
              as String,
      mMsgId: null == mMsgId
          ? _value.mMsgId
          : mMsgId // ignore: cast_nullable_to_non_nullable
              as String,
      mThreadId: null == mThreadId
          ? _value.mThreadId
          : mThreadId // ignore: cast_nullable_to_non_nullable
              as String,
      mParentId: null == mParentId
          ? _value.mParentId
          : mParentId // ignore: cast_nullable_to_non_nullable
              as String,
      mOrigMsgId: null == mOrigMsgId
          ? _value.mOrigMsgId
          : mOrigMsgId // ignore: cast_nullable_to_non_nullable
              as String,
      mAuthorId: null == mAuthorId
          ? _value.mAuthorId
          : mAuthorId // ignore: cast_nullable_to_non_nullable
              as String,
      mMsgName: null == mMsgName
          ? _value.mMsgName
          : mMsgName // ignore: cast_nullable_to_non_nullable
              as String,
      mPublishTs: null == mPublishTs
          ? _value.mPublishTs
          : mPublishTs // ignore: cast_nullable_to_non_nullable
              as RsInt64,
      mMsgFlags: null == mMsgFlags
          ? _value.mMsgFlags
          : mMsgFlags // ignore: cast_nullable_to_non_nullable
              as int,
      mMsgStatus: null == mMsgStatus
          ? _value.mMsgStatus
          : mMsgStatus // ignore: cast_nullable_to_non_nullable
              as int,
      mChildTs: null == mChildTs
          ? _value.mChildTs
          : mChildTs // ignore: cast_nullable_to_non_nullable
              as RsInt64,
      mServiceString: null == mServiceString
          ? _value.mServiceString
          : mServiceString // ignore: cast_nullable_to_non_nullable
              as String,
      rawJson: null == rawJson
          ? _value._rawJson
          : rawJson // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RsMsgMetaDataImpl implements _RsMsgMetaData {
  const _$RsMsgMetaDataImpl(
      {required this.mGroupId,
      required this.mMsgId,
      required this.mThreadId,
      required this.mParentId,
      required this.mOrigMsgId,
      required this.mAuthorId,
      required this.mMsgName,
      required this.mPublishTs,
      required this.mMsgFlags,
      required this.mMsgStatus,
      required this.mChildTs,
      required this.mServiceString,
      required final Map<String, dynamic> rawJson})
      : _rawJson = rawJson;

  factory _$RsMsgMetaDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RsMsgMetaDataImplFromJson(json);

  @override
  final String mGroupId;
// ID of the group where the message belongs.
  @override
  final String mMsgId;
// ID of the message.
  @override
  final String mThreadId;
// ID of the thread the message belongs to.
  @override
  final String mParentId;
// Parent message ID (for threads).
  @override
  final String mOrigMsgId;
// Original message ID (if this is a reply).
  @override
  final String mAuthorId;
// ID of the message author.
  @override
  final String mMsgName;
// Name of the message.
  @override
  final RsInt64 mPublishTs;
// Timestamp when the message was published.
  @override
  final int mMsgFlags;
// Message flags indicating specific attributes.
  @override
  final int mMsgStatus;
// Status of the message (e.g., read, unread).
  @override
  final RsInt64 mChildTs;
// Timestamp for child messages (if any).
  @override
  final String mServiceString;
// Free-form string for service-specific data.
  final Map<String, dynamic> _rawJson;
// Free-form string for service-specific data.
  @override
  Map<String, dynamic> get rawJson {
    if (_rawJson is EqualUnmodifiableMapView) return _rawJson;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_rawJson);
  }

  @override
  String toString() {
    return 'RsMsgMetaData(mGroupId: $mGroupId, mMsgId: $mMsgId, mThreadId: $mThreadId, mParentId: $mParentId, mOrigMsgId: $mOrigMsgId, mAuthorId: $mAuthorId, mMsgName: $mMsgName, mPublishTs: $mPublishTs, mMsgFlags: $mMsgFlags, mMsgStatus: $mMsgStatus, mChildTs: $mChildTs, mServiceString: $mServiceString, rawJson: $rawJson)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RsMsgMetaDataImpl &&
            (identical(other.mGroupId, mGroupId) ||
                other.mGroupId == mGroupId) &&
            (identical(other.mMsgId, mMsgId) || other.mMsgId == mMsgId) &&
            (identical(other.mThreadId, mThreadId) ||
                other.mThreadId == mThreadId) &&
            (identical(other.mParentId, mParentId) ||
                other.mParentId == mParentId) &&
            (identical(other.mOrigMsgId, mOrigMsgId) ||
                other.mOrigMsgId == mOrigMsgId) &&
            (identical(other.mAuthorId, mAuthorId) ||
                other.mAuthorId == mAuthorId) &&
            (identical(other.mMsgName, mMsgName) ||
                other.mMsgName == mMsgName) &&
            (identical(other.mPublishTs, mPublishTs) ||
                other.mPublishTs == mPublishTs) &&
            (identical(other.mMsgFlags, mMsgFlags) ||
                other.mMsgFlags == mMsgFlags) &&
            (identical(other.mMsgStatus, mMsgStatus) ||
                other.mMsgStatus == mMsgStatus) &&
            (identical(other.mChildTs, mChildTs) ||
                other.mChildTs == mChildTs) &&
            (identical(other.mServiceString, mServiceString) ||
                other.mServiceString == mServiceString) &&
            const DeepCollectionEquality().equals(other._rawJson, _rawJson));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      mGroupId,
      mMsgId,
      mThreadId,
      mParentId,
      mOrigMsgId,
      mAuthorId,
      mMsgName,
      mPublishTs,
      mMsgFlags,
      mMsgStatus,
      mChildTs,
      mServiceString,
      const DeepCollectionEquality().hash(_rawJson));

  /// Create a copy of RsMsgMetaData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RsMsgMetaDataImplCopyWith<_$RsMsgMetaDataImpl> get copyWith =>
      __$$RsMsgMetaDataImplCopyWithImpl<_$RsMsgMetaDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RsMsgMetaDataImplToJson(
      this,
    );
  }
}

abstract class _RsMsgMetaData implements RsMsgMetaData {
  const factory _RsMsgMetaData(
      {required final String mGroupId,
      required final String mMsgId,
      required final String mThreadId,
      required final String mParentId,
      required final String mOrigMsgId,
      required final String mAuthorId,
      required final String mMsgName,
      required final RsInt64 mPublishTs,
      required final int mMsgFlags,
      required final int mMsgStatus,
      required final RsInt64 mChildTs,
      required final String mServiceString,
      required final Map<String, dynamic> rawJson}) = _$RsMsgMetaDataImpl;

  factory _RsMsgMetaData.fromJson(Map<String, dynamic> json) =
      _$RsMsgMetaDataImpl.fromJson;

  @override
  String get mGroupId; // ID of the group where the message belongs.
  @override
  String get mMsgId; // ID of the message.
  @override
  String get mThreadId; // ID of the thread the message belongs to.
  @override
  String get mParentId; // Parent message ID (for threads).
  @override
  String get mOrigMsgId; // Original message ID (if this is a reply).
  @override
  String get mAuthorId; // ID of the message author.
  @override
  String get mMsgName; // Name of the message.
  @override
  RsInt64 get mPublishTs; // Timestamp when the message was published.
  @override
  int get mMsgFlags; // Message flags indicating specific attributes.
  @override
  int get mMsgStatus; // Status of the message (e.g., read, unread).
  @override
  RsInt64 get mChildTs; // Timestamp for child messages (if any).
  @override
  String get mServiceString; // Free-form string for service-specific data.
  @override
  Map<String, dynamic> get rawJson;

  /// Create a copy of RsMsgMetaData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RsMsgMetaDataImplCopyWith<_$RsMsgMetaDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

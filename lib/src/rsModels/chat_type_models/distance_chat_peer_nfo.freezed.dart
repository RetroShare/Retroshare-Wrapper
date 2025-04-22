// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'distance_chat_peer_nfo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DistantChatPeerInfo _$DistantChatPeerInfoFromJson(Map<String, dynamic> json) {
  return _DistantChatPeerInfo.fromJson(json);
}

/// @nodoc
mixin _$DistantChatPeerInfo {
  @JsonKey(name: 'to_id')
  String? get toId => throw _privateConstructorUsedError;
  @JsonKey(name: 'own_id')
  String? get ownId => throw _privateConstructorUsedError;
  @JsonKey(name: 'peer_id')
  String? get peerId => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'pending_items')
  int? get pendingItems => throw _privateConstructorUsedError;

  /// Serializes this DistantChatPeerInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DistantChatPeerInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DistantChatPeerInfoCopyWith<DistantChatPeerInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistantChatPeerInfoCopyWith<$Res> {
  factory $DistantChatPeerInfoCopyWith(
          DistantChatPeerInfo value, $Res Function(DistantChatPeerInfo) then) =
      _$DistantChatPeerInfoCopyWithImpl<$Res, DistantChatPeerInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'to_id') String? toId,
      @JsonKey(name: 'own_id') String? ownId,
      @JsonKey(name: 'peer_id') String? peerId,
      int? status,
      @JsonKey(name: 'pending_items') int? pendingItems});
}

/// @nodoc
class _$DistantChatPeerInfoCopyWithImpl<$Res, $Val extends DistantChatPeerInfo>
    implements $DistantChatPeerInfoCopyWith<$Res> {
  _$DistantChatPeerInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DistantChatPeerInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toId = freezed,
    Object? ownId = freezed,
    Object? peerId = freezed,
    Object? status = freezed,
    Object? pendingItems = freezed,
  }) {
    return _then(_value.copyWith(
      toId: freezed == toId
          ? _value.toId
          : toId // ignore: cast_nullable_to_non_nullable
              as String?,
      ownId: freezed == ownId
          ? _value.ownId
          : ownId // ignore: cast_nullable_to_non_nullable
              as String?,
      peerId: freezed == peerId
          ? _value.peerId
          : peerId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      pendingItems: freezed == pendingItems
          ? _value.pendingItems
          : pendingItems // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DistantChatPeerInfoImplCopyWith<$Res>
    implements $DistantChatPeerInfoCopyWith<$Res> {
  factory _$$DistantChatPeerInfoImplCopyWith(_$DistantChatPeerInfoImpl value,
          $Res Function(_$DistantChatPeerInfoImpl) then) =
      __$$DistantChatPeerInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'to_id') String? toId,
      @JsonKey(name: 'own_id') String? ownId,
      @JsonKey(name: 'peer_id') String? peerId,
      int? status,
      @JsonKey(name: 'pending_items') int? pendingItems});
}

/// @nodoc
class __$$DistantChatPeerInfoImplCopyWithImpl<$Res>
    extends _$DistantChatPeerInfoCopyWithImpl<$Res, _$DistantChatPeerInfoImpl>
    implements _$$DistantChatPeerInfoImplCopyWith<$Res> {
  __$$DistantChatPeerInfoImplCopyWithImpl(_$DistantChatPeerInfoImpl _value,
      $Res Function(_$DistantChatPeerInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DistantChatPeerInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toId = freezed,
    Object? ownId = freezed,
    Object? peerId = freezed,
    Object? status = freezed,
    Object? pendingItems = freezed,
  }) {
    return _then(_$DistantChatPeerInfoImpl(
      toId: freezed == toId
          ? _value.toId
          : toId // ignore: cast_nullable_to_non_nullable
              as String?,
      ownId: freezed == ownId
          ? _value.ownId
          : ownId // ignore: cast_nullable_to_non_nullable
              as String?,
      peerId: freezed == peerId
          ? _value.peerId
          : peerId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      pendingItems: freezed == pendingItems
          ? _value.pendingItems
          : pendingItems // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DistantChatPeerInfoImpl implements _DistantChatPeerInfo {
  const _$DistantChatPeerInfoImpl(
      {@JsonKey(name: 'to_id') this.toId,
      @JsonKey(name: 'own_id') this.ownId,
      @JsonKey(name: 'peer_id') this.peerId,
      this.status,
      @JsonKey(name: 'pending_items') this.pendingItems});

  factory _$DistantChatPeerInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DistantChatPeerInfoImplFromJson(json);

  @override
  @JsonKey(name: 'to_id')
  final String? toId;
  @override
  @JsonKey(name: 'own_id')
  final String? ownId;
  @override
  @JsonKey(name: 'peer_id')
  final String? peerId;
  @override
  final int? status;
  @override
  @JsonKey(name: 'pending_items')
  final int? pendingItems;

  @override
  String toString() {
    return 'DistantChatPeerInfo(toId: $toId, ownId: $ownId, peerId: $peerId, status: $status, pendingItems: $pendingItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistantChatPeerInfoImpl &&
            (identical(other.toId, toId) || other.toId == toId) &&
            (identical(other.ownId, ownId) || other.ownId == ownId) &&
            (identical(other.peerId, peerId) || other.peerId == peerId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.pendingItems, pendingItems) ||
                other.pendingItems == pendingItems));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, toId, ownId, peerId, status, pendingItems);

  /// Create a copy of DistantChatPeerInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DistantChatPeerInfoImplCopyWith<_$DistantChatPeerInfoImpl> get copyWith =>
      __$$DistantChatPeerInfoImplCopyWithImpl<_$DistantChatPeerInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DistantChatPeerInfoImplToJson(
      this,
    );
  }
}

abstract class _DistantChatPeerInfo implements DistantChatPeerInfo {
  const factory _DistantChatPeerInfo(
          {@JsonKey(name: 'to_id') final String? toId,
          @JsonKey(name: 'own_id') final String? ownId,
          @JsonKey(name: 'peer_id') final String? peerId,
          final int? status,
          @JsonKey(name: 'pending_items') final int? pendingItems}) =
      _$DistantChatPeerInfoImpl;

  factory _DistantChatPeerInfo.fromJson(Map<String, dynamic> json) =
      _$DistantChatPeerInfoImpl.fromJson;

  @override
  @JsonKey(name: 'to_id')
  String? get toId;
  @override
  @JsonKey(name: 'own_id')
  String? get ownId;
  @override
  @JsonKey(name: 'peer_id')
  String? get peerId;
  @override
  int? get status;
  @override
  @JsonKey(name: 'pending_items')
  int? get pendingItems;

  /// Create a copy of DistantChatPeerInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DistantChatPeerInfoImplCopyWith<_$DistantChatPeerInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

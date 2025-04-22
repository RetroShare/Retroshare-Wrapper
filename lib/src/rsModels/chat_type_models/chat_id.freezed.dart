// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatId _$ChatIdFromJson(Map<String, dynamic> json) {
  return _ChatId.fromJson(json);
}

/// @nodoc
mixin _$ChatId {
  @JsonKey(name: 'broadcast_status_peer_id')
  String? get broadcastStatusPeerId => throw _privateConstructorUsedError;
  ChatIdType? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'peer_id')
  String? get peerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'distant_chat_id')
  String? get distantChatId => throw _privateConstructorUsedError;
  @JsonKey(name: 'lobby_id')
  ChatLobbyId? get lobbyId => throw _privateConstructorUsedError;

  /// Serializes this ChatId to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatIdCopyWith<ChatId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatIdCopyWith<$Res> {
  factory $ChatIdCopyWith(ChatId value, $Res Function(ChatId) then) =
      _$ChatIdCopyWithImpl<$Res, ChatId>;
  @useResult
  $Res call(
      {@JsonKey(name: 'broadcast_status_peer_id') String? broadcastStatusPeerId,
      ChatIdType? type,
      @JsonKey(name: 'peer_id') String? peerId,
      @JsonKey(name: 'distant_chat_id') String? distantChatId,
      @JsonKey(name: 'lobby_id') ChatLobbyId? lobbyId});

  $ChatLobbyIdCopyWith<$Res>? get lobbyId;
}

/// @nodoc
class _$ChatIdCopyWithImpl<$Res, $Val extends ChatId>
    implements $ChatIdCopyWith<$Res> {
  _$ChatIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcastStatusPeerId = freezed,
    Object? type = freezed,
    Object? peerId = freezed,
    Object? distantChatId = freezed,
    Object? lobbyId = freezed,
  }) {
    return _then(_value.copyWith(
      broadcastStatusPeerId: freezed == broadcastStatusPeerId
          ? _value.broadcastStatusPeerId
          : broadcastStatusPeerId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ChatIdType?,
      peerId: freezed == peerId
          ? _value.peerId
          : peerId // ignore: cast_nullable_to_non_nullable
              as String?,
      distantChatId: freezed == distantChatId
          ? _value.distantChatId
          : distantChatId // ignore: cast_nullable_to_non_nullable
              as String?,
      lobbyId: freezed == lobbyId
          ? _value.lobbyId
          : lobbyId // ignore: cast_nullable_to_non_nullable
              as ChatLobbyId?,
    ) as $Val);
  }

  /// Create a copy of ChatId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatLobbyIdCopyWith<$Res>? get lobbyId {
    if (_value.lobbyId == null) {
      return null;
    }

    return $ChatLobbyIdCopyWith<$Res>(_value.lobbyId!, (value) {
      return _then(_value.copyWith(lobbyId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatIdImplCopyWith<$Res> implements $ChatIdCopyWith<$Res> {
  factory _$$ChatIdImplCopyWith(
          _$ChatIdImpl value, $Res Function(_$ChatIdImpl) then) =
      __$$ChatIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'broadcast_status_peer_id') String? broadcastStatusPeerId,
      ChatIdType? type,
      @JsonKey(name: 'peer_id') String? peerId,
      @JsonKey(name: 'distant_chat_id') String? distantChatId,
      @JsonKey(name: 'lobby_id') ChatLobbyId? lobbyId});

  @override
  $ChatLobbyIdCopyWith<$Res>? get lobbyId;
}

/// @nodoc
class __$$ChatIdImplCopyWithImpl<$Res>
    extends _$ChatIdCopyWithImpl<$Res, _$ChatIdImpl>
    implements _$$ChatIdImplCopyWith<$Res> {
  __$$ChatIdImplCopyWithImpl(
      _$ChatIdImpl _value, $Res Function(_$ChatIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcastStatusPeerId = freezed,
    Object? type = freezed,
    Object? peerId = freezed,
    Object? distantChatId = freezed,
    Object? lobbyId = freezed,
  }) {
    return _then(_$ChatIdImpl(
      broadcastStatusPeerId: freezed == broadcastStatusPeerId
          ? _value.broadcastStatusPeerId
          : broadcastStatusPeerId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ChatIdType?,
      peerId: freezed == peerId
          ? _value.peerId
          : peerId // ignore: cast_nullable_to_non_nullable
              as String?,
      distantChatId: freezed == distantChatId
          ? _value.distantChatId
          : distantChatId // ignore: cast_nullable_to_non_nullable
              as String?,
      lobbyId: freezed == lobbyId
          ? _value.lobbyId
          : lobbyId // ignore: cast_nullable_to_non_nullable
              as ChatLobbyId?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatIdImpl extends _ChatId {
  const _$ChatIdImpl(
      {@JsonKey(name: 'broadcast_status_peer_id') this.broadcastStatusPeerId,
      this.type,
      @JsonKey(name: 'peer_id') this.peerId,
      @JsonKey(name: 'distant_chat_id') this.distantChatId,
      @JsonKey(name: 'lobby_id') this.lobbyId})
      : super._();

  factory _$ChatIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatIdImplFromJson(json);

  @override
  @JsonKey(name: 'broadcast_status_peer_id')
  final String? broadcastStatusPeerId;
  @override
  final ChatIdType? type;
  @override
  @JsonKey(name: 'peer_id')
  final String? peerId;
  @override
  @JsonKey(name: 'distant_chat_id')
  final String? distantChatId;
  @override
  @JsonKey(name: 'lobby_id')
  final ChatLobbyId? lobbyId;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatIdImpl &&
            (identical(other.broadcastStatusPeerId, broadcastStatusPeerId) ||
                other.broadcastStatusPeerId == broadcastStatusPeerId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.peerId, peerId) || other.peerId == peerId) &&
            (identical(other.distantChatId, distantChatId) ||
                other.distantChatId == distantChatId) &&
            (identical(other.lobbyId, lobbyId) || other.lobbyId == lobbyId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, broadcastStatusPeerId, type, peerId, distantChatId, lobbyId);

  /// Create a copy of ChatId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatIdImplCopyWith<_$ChatIdImpl> get copyWith =>
      __$$ChatIdImplCopyWithImpl<_$ChatIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatIdImplToJson(
      this,
    );
  }
}

abstract class _ChatId extends ChatId {
  const factory _ChatId(
      {@JsonKey(name: 'broadcast_status_peer_id')
      final String? broadcastStatusPeerId,
      final ChatIdType? type,
      @JsonKey(name: 'peer_id') final String? peerId,
      @JsonKey(name: 'distant_chat_id') final String? distantChatId,
      @JsonKey(name: 'lobby_id') final ChatLobbyId? lobbyId}) = _$ChatIdImpl;
  const _ChatId._() : super._();

  factory _ChatId.fromJson(Map<String, dynamic> json) = _$ChatIdImpl.fromJson;

  @override
  @JsonKey(name: 'broadcast_status_peer_id')
  String? get broadcastStatusPeerId;
  @override
  ChatIdType? get type;
  @override
  @JsonKey(name: 'peer_id')
  String? get peerId;
  @override
  @JsonKey(name: 'distant_chat_id')
  String? get distantChatId;
  @override
  @JsonKey(name: 'lobby_id')
  ChatLobbyId? get lobbyId;

  /// Create a copy of ChatId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatIdImplCopyWith<_$ChatIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

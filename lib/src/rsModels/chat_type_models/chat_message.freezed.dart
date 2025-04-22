// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) {
  return _ChatMessage.fromJson(json);
}

/// @nodoc
mixin _$ChatMessage {
  @JsonKey(name: 'chat_id')
  ChatId? get chatId => throw _privateConstructorUsedError;
  @JsonKey(name: 'broadcast_peer_id')
  String? get broadcastPeerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'lobby_peer_gxs_id')
  String? get lobbyPeerGxsId => throw _privateConstructorUsedError;
  @JsonKey(name: 'peer_alternate_nickname')
  String? get peerAlternateNickname => throw _privateConstructorUsedError;
  int? get chatflags => throw _privateConstructorUsedError;
  int? get sendTime => throw _privateConstructorUsedError;
  int? get recvTime => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;
  bool? get incoming => throw _privateConstructorUsedError;
  bool? get online => throw _privateConstructorUsedError;

  /// Serializes this ChatMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMessageCopyWith<ChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageCopyWith<$Res> {
  factory $ChatMessageCopyWith(
          ChatMessage value, $Res Function(ChatMessage) then) =
      _$ChatMessageCopyWithImpl<$Res, ChatMessage>;
  @useResult
  $Res call(
      {@JsonKey(name: 'chat_id') ChatId? chatId,
      @JsonKey(name: 'broadcast_peer_id') String? broadcastPeerId,
      @JsonKey(name: 'lobby_peer_gxs_id') String? lobbyPeerGxsId,
      @JsonKey(name: 'peer_alternate_nickname') String? peerAlternateNickname,
      int? chatflags,
      int? sendTime,
      int? recvTime,
      String? msg,
      bool? incoming,
      bool? online});

  $ChatIdCopyWith<$Res>? get chatId;
}

/// @nodoc
class _$ChatMessageCopyWithImpl<$Res, $Val extends ChatMessage>
    implements $ChatMessageCopyWith<$Res> {
  _$ChatMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = freezed,
    Object? broadcastPeerId = freezed,
    Object? lobbyPeerGxsId = freezed,
    Object? peerAlternateNickname = freezed,
    Object? chatflags = freezed,
    Object? sendTime = freezed,
    Object? recvTime = freezed,
    Object? msg = freezed,
    Object? incoming = freezed,
    Object? online = freezed,
  }) {
    return _then(_value.copyWith(
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as ChatId?,
      broadcastPeerId: freezed == broadcastPeerId
          ? _value.broadcastPeerId
          : broadcastPeerId // ignore: cast_nullable_to_non_nullable
              as String?,
      lobbyPeerGxsId: freezed == lobbyPeerGxsId
          ? _value.lobbyPeerGxsId
          : lobbyPeerGxsId // ignore: cast_nullable_to_non_nullable
              as String?,
      peerAlternateNickname: freezed == peerAlternateNickname
          ? _value.peerAlternateNickname
          : peerAlternateNickname // ignore: cast_nullable_to_non_nullable
              as String?,
      chatflags: freezed == chatflags
          ? _value.chatflags
          : chatflags // ignore: cast_nullable_to_non_nullable
              as int?,
      sendTime: freezed == sendTime
          ? _value.sendTime
          : sendTime // ignore: cast_nullable_to_non_nullable
              as int?,
      recvTime: freezed == recvTime
          ? _value.recvTime
          : recvTime // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      incoming: freezed == incoming
          ? _value.incoming
          : incoming // ignore: cast_nullable_to_non_nullable
              as bool?,
      online: freezed == online
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatIdCopyWith<$Res>? get chatId {
    if (_value.chatId == null) {
      return null;
    }

    return $ChatIdCopyWith<$Res>(_value.chatId!, (value) {
      return _then(_value.copyWith(chatId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatMessageImplCopyWith<$Res>
    implements $ChatMessageCopyWith<$Res> {
  factory _$$ChatMessageImplCopyWith(
          _$ChatMessageImpl value, $Res Function(_$ChatMessageImpl) then) =
      __$$ChatMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'chat_id') ChatId? chatId,
      @JsonKey(name: 'broadcast_peer_id') String? broadcastPeerId,
      @JsonKey(name: 'lobby_peer_gxs_id') String? lobbyPeerGxsId,
      @JsonKey(name: 'peer_alternate_nickname') String? peerAlternateNickname,
      int? chatflags,
      int? sendTime,
      int? recvTime,
      String? msg,
      bool? incoming,
      bool? online});

  @override
  $ChatIdCopyWith<$Res>? get chatId;
}

/// @nodoc
class __$$ChatMessageImplCopyWithImpl<$Res>
    extends _$ChatMessageCopyWithImpl<$Res, _$ChatMessageImpl>
    implements _$$ChatMessageImplCopyWith<$Res> {
  __$$ChatMessageImplCopyWithImpl(
      _$ChatMessageImpl _value, $Res Function(_$ChatMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = freezed,
    Object? broadcastPeerId = freezed,
    Object? lobbyPeerGxsId = freezed,
    Object? peerAlternateNickname = freezed,
    Object? chatflags = freezed,
    Object? sendTime = freezed,
    Object? recvTime = freezed,
    Object? msg = freezed,
    Object? incoming = freezed,
    Object? online = freezed,
  }) {
    return _then(_$ChatMessageImpl(
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as ChatId?,
      broadcastPeerId: freezed == broadcastPeerId
          ? _value.broadcastPeerId
          : broadcastPeerId // ignore: cast_nullable_to_non_nullable
              as String?,
      lobbyPeerGxsId: freezed == lobbyPeerGxsId
          ? _value.lobbyPeerGxsId
          : lobbyPeerGxsId // ignore: cast_nullable_to_non_nullable
              as String?,
      peerAlternateNickname: freezed == peerAlternateNickname
          ? _value.peerAlternateNickname
          : peerAlternateNickname // ignore: cast_nullable_to_non_nullable
              as String?,
      chatflags: freezed == chatflags
          ? _value.chatflags
          : chatflags // ignore: cast_nullable_to_non_nullable
              as int?,
      sendTime: freezed == sendTime
          ? _value.sendTime
          : sendTime // ignore: cast_nullable_to_non_nullable
              as int?,
      recvTime: freezed == recvTime
          ? _value.recvTime
          : recvTime // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      incoming: freezed == incoming
          ? _value.incoming
          : incoming // ignore: cast_nullable_to_non_nullable
              as bool?,
      online: freezed == online
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMessageImpl extends _ChatMessage {
  const _$ChatMessageImpl(
      {@JsonKey(name: 'chat_id') this.chatId,
      @JsonKey(name: 'broadcast_peer_id') this.broadcastPeerId,
      @JsonKey(name: 'lobby_peer_gxs_id') this.lobbyPeerGxsId,
      @JsonKey(name: 'peer_alternate_nickname') this.peerAlternateNickname,
      this.chatflags,
      this.sendTime,
      this.recvTime,
      this.msg,
      this.incoming,
      this.online})
      : super._();

  factory _$ChatMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessageImplFromJson(json);

  @override
  @JsonKey(name: 'chat_id')
  final ChatId? chatId;
  @override
  @JsonKey(name: 'broadcast_peer_id')
  final String? broadcastPeerId;
  @override
  @JsonKey(name: 'lobby_peer_gxs_id')
  final String? lobbyPeerGxsId;
  @override
  @JsonKey(name: 'peer_alternate_nickname')
  final String? peerAlternateNickname;
  @override
  final int? chatflags;
  @override
  final int? sendTime;
  @override
  final int? recvTime;
  @override
  final String? msg;
  @override
  final bool? incoming;
  @override
  final bool? online;

  @override
  String toString() {
    return 'ChatMessage(chatId: $chatId, broadcastPeerId: $broadcastPeerId, lobbyPeerGxsId: $lobbyPeerGxsId, peerAlternateNickname: $peerAlternateNickname, chatflags: $chatflags, sendTime: $sendTime, recvTime: $recvTime, msg: $msg, incoming: $incoming, online: $online)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.broadcastPeerId, broadcastPeerId) ||
                other.broadcastPeerId == broadcastPeerId) &&
            (identical(other.lobbyPeerGxsId, lobbyPeerGxsId) ||
                other.lobbyPeerGxsId == lobbyPeerGxsId) &&
            (identical(other.peerAlternateNickname, peerAlternateNickname) ||
                other.peerAlternateNickname == peerAlternateNickname) &&
            (identical(other.chatflags, chatflags) ||
                other.chatflags == chatflags) &&
            (identical(other.sendTime, sendTime) ||
                other.sendTime == sendTime) &&
            (identical(other.recvTime, recvTime) ||
                other.recvTime == recvTime) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.incoming, incoming) ||
                other.incoming == incoming) &&
            (identical(other.online, online) || other.online == online));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      chatId,
      broadcastPeerId,
      lobbyPeerGxsId,
      peerAlternateNickname,
      chatflags,
      sendTime,
      recvTime,
      msg,
      incoming,
      online);

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageImplCopyWith<_$ChatMessageImpl> get copyWith =>
      __$$ChatMessageImplCopyWithImpl<_$ChatMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessageImplToJson(
      this,
    );
  }
}

abstract class _ChatMessage extends ChatMessage {
  const factory _ChatMessage(
      {@JsonKey(name: 'chat_id') final ChatId? chatId,
      @JsonKey(name: 'broadcast_peer_id') final String? broadcastPeerId,
      @JsonKey(name: 'lobby_peer_gxs_id') final String? lobbyPeerGxsId,
      @JsonKey(name: 'peer_alternate_nickname')
      final String? peerAlternateNickname,
      final int? chatflags,
      final int? sendTime,
      final int? recvTime,
      final String? msg,
      final bool? incoming,
      final bool? online}) = _$ChatMessageImpl;
  const _ChatMessage._() : super._();

  factory _ChatMessage.fromJson(Map<String, dynamic> json) =
      _$ChatMessageImpl.fromJson;

  @override
  @JsonKey(name: 'chat_id')
  ChatId? get chatId;
  @override
  @JsonKey(name: 'broadcast_peer_id')
  String? get broadcastPeerId;
  @override
  @JsonKey(name: 'lobby_peer_gxs_id')
  String? get lobbyPeerGxsId;
  @override
  @JsonKey(name: 'peer_alternate_nickname')
  String? get peerAlternateNickname;
  @override
  int? get chatflags;
  @override
  int? get sendTime;
  @override
  int? get recvTime;
  @override
  String? get msg;
  @override
  bool? get incoming;
  @override
  bool? get online;

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessageImplCopyWith<_$ChatMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

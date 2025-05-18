// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Chat _$ChatFromJson(Map<String, dynamic> json) {
  return _Chat.fromJson(json);
}

/// @nodoc
mixin _$Chat {
  String? get chatId => throw _privateConstructorUsedError;
  set chatId(String? value) => throw _privateConstructorUsedError;
  String? get chatName => throw _privateConstructorUsedError;
  set chatName(String? value) => throw _privateConstructorUsedError;
  String get ownIdToUse => throw _privateConstructorUsedError;
  set ownIdToUse(String value) => throw _privateConstructorUsedError;
  String get interlocutorId => throw _privateConstructorUsedError;
  set interlocutorId(String value) => throw _privateConstructorUsedError;
  String? get lobbyTopic => throw _privateConstructorUsedError;
  set lobbyTopic(String? value) => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  set isPublic(bool value) => throw _privateConstructorUsedError;
  int? get numberOfParticipants => throw _privateConstructorUsedError;
  set numberOfParticipants(int? value) => throw _privateConstructorUsedError;
  int? get lobbyFlags => throw _privateConstructorUsedError;
  set lobbyFlags(int? value) => throw _privateConstructorUsedError;
  bool? get autoSubscribe => throw _privateConstructorUsedError;
  set autoSubscribe(bool? value) => throw _privateConstructorUsedError;
  int get unreadCount => throw _privateConstructorUsedError;
  set unreadCount(int value) => throw _privateConstructorUsedError;

  /// Serializes this Chat to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Chat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatCopyWith<Chat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCopyWith<$Res> {
  factory $ChatCopyWith(Chat value, $Res Function(Chat) then) =
      _$ChatCopyWithImpl<$Res, Chat>;
  @useResult
  $Res call(
      {String? chatId,
      String? chatName,
      String ownIdToUse,
      String interlocutorId,
      String? lobbyTopic,
      bool isPublic,
      int? numberOfParticipants,
      int? lobbyFlags,
      bool? autoSubscribe,
      int unreadCount});
}

/// @nodoc
class _$ChatCopyWithImpl<$Res, $Val extends Chat>
    implements $ChatCopyWith<$Res> {
  _$ChatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Chat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = freezed,
    Object? chatName = freezed,
    Object? ownIdToUse = null,
    Object? interlocutorId = null,
    Object? lobbyTopic = freezed,
    Object? isPublic = null,
    Object? numberOfParticipants = freezed,
    Object? lobbyFlags = freezed,
    Object? autoSubscribe = freezed,
    Object? unreadCount = null,
  }) {
    return _then(_value.copyWith(
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
      chatName: freezed == chatName
          ? _value.chatName
          : chatName // ignore: cast_nullable_to_non_nullable
              as String?,
      ownIdToUse: null == ownIdToUse
          ? _value.ownIdToUse
          : ownIdToUse // ignore: cast_nullable_to_non_nullable
              as String,
      interlocutorId: null == interlocutorId
          ? _value.interlocutorId
          : interlocutorId // ignore: cast_nullable_to_non_nullable
              as String,
      lobbyTopic: freezed == lobbyTopic
          ? _value.lobbyTopic
          : lobbyTopic // ignore: cast_nullable_to_non_nullable
              as String?,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      numberOfParticipants: freezed == numberOfParticipants
          ? _value.numberOfParticipants
          : numberOfParticipants // ignore: cast_nullable_to_non_nullable
              as int?,
      lobbyFlags: freezed == lobbyFlags
          ? _value.lobbyFlags
          : lobbyFlags // ignore: cast_nullable_to_non_nullable
              as int?,
      autoSubscribe: freezed == autoSubscribe
          ? _value.autoSubscribe
          : autoSubscribe // ignore: cast_nullable_to_non_nullable
              as bool?,
      unreadCount: null == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatImplCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$$ChatImplCopyWith(
          _$ChatImpl value, $Res Function(_$ChatImpl) then) =
      __$$ChatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? chatId,
      String? chatName,
      String ownIdToUse,
      String interlocutorId,
      String? lobbyTopic,
      bool isPublic,
      int? numberOfParticipants,
      int? lobbyFlags,
      bool? autoSubscribe,
      int unreadCount});
}

/// @nodoc
class __$$ChatImplCopyWithImpl<$Res>
    extends _$ChatCopyWithImpl<$Res, _$ChatImpl>
    implements _$$ChatImplCopyWith<$Res> {
  __$$ChatImplCopyWithImpl(_$ChatImpl _value, $Res Function(_$ChatImpl) _then)
      : super(_value, _then);

  /// Create a copy of Chat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = freezed,
    Object? chatName = freezed,
    Object? ownIdToUse = null,
    Object? interlocutorId = null,
    Object? lobbyTopic = freezed,
    Object? isPublic = null,
    Object? numberOfParticipants = freezed,
    Object? lobbyFlags = freezed,
    Object? autoSubscribe = freezed,
    Object? unreadCount = null,
  }) {
    return _then(_$ChatImpl(
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
      chatName: freezed == chatName
          ? _value.chatName
          : chatName // ignore: cast_nullable_to_non_nullable
              as String?,
      ownIdToUse: null == ownIdToUse
          ? _value.ownIdToUse
          : ownIdToUse // ignore: cast_nullable_to_non_nullable
              as String,
      interlocutorId: null == interlocutorId
          ? _value.interlocutorId
          : interlocutorId // ignore: cast_nullable_to_non_nullable
              as String,
      lobbyTopic: freezed == lobbyTopic
          ? _value.lobbyTopic
          : lobbyTopic // ignore: cast_nullable_to_non_nullable
              as String?,
      isPublic: null == isPublic
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      numberOfParticipants: freezed == numberOfParticipants
          ? _value.numberOfParticipants
          : numberOfParticipants // ignore: cast_nullable_to_non_nullable
              as int?,
      lobbyFlags: freezed == lobbyFlags
          ? _value.lobbyFlags
          : lobbyFlags // ignore: cast_nullable_to_non_nullable
              as int?,
      autoSubscribe: freezed == autoSubscribe
          ? _value.autoSubscribe
          : autoSubscribe // ignore: cast_nullable_to_non_nullable
              as bool?,
      unreadCount: null == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatImpl extends _Chat {
  const _$ChatImpl(
      {this.chatId,
      this.chatName,
      required this.ownIdToUse,
      required this.interlocutorId,
      this.lobbyTopic,
      required this.isPublic,
      this.numberOfParticipants,
      this.lobbyFlags,
      this.autoSubscribe,
      this.unreadCount = 0})
      : super._();

  factory _$ChatImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatImplFromJson(json);

  @override
  String? chatId;
  @override
  String? chatName;
  @override
  String ownIdToUse;
  @override
  String interlocutorId;
  @override
  String? lobbyTopic;
  @override
  bool isPublic;
  @override
  int? numberOfParticipants;
  @override
  int? lobbyFlags;
  @override
  bool? autoSubscribe;
  @override
  @JsonKey()
  int unreadCount;

  @override
  String toString() {
    return 'Chat(chatId: $chatId, chatName: $chatName, ownIdToUse: $ownIdToUse, interlocutorId: $interlocutorId, lobbyTopic: $lobbyTopic, isPublic: $isPublic, numberOfParticipants: $numberOfParticipants, lobbyFlags: $lobbyFlags, autoSubscribe: $autoSubscribe, unreadCount: $unreadCount)';
  }

  /// Create a copy of Chat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatImplCopyWith<_$ChatImpl> get copyWith =>
      __$$ChatImplCopyWithImpl<_$ChatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatImplToJson(
      this,
    );
  }
}

abstract class _Chat extends Chat {
  const factory _Chat(
      {String? chatId,
      String? chatName,
      required String ownIdToUse,
      required String interlocutorId,
      String? lobbyTopic,
      required bool isPublic,
      int? numberOfParticipants,
      int? lobbyFlags,
      bool? autoSubscribe,
      int unreadCount}) = _$ChatImpl;
  const _Chat._() : super._();

  factory _Chat.fromJson(Map<String, dynamic> json) = _$ChatImpl.fromJson;

  @override
  String? get chatId;
  set chatId(String? value);
  @override
  String? get chatName;
  set chatName(String? value);
  @override
  String get ownIdToUse;
  set ownIdToUse(String value);
  @override
  String get interlocutorId;
  set interlocutorId(String value);
  @override
  String? get lobbyTopic;
  set lobbyTopic(String? value);
  @override
  bool get isPublic;
  set isPublic(bool value);
  @override
  int? get numberOfParticipants;
  set numberOfParticipants(int? value);
  @override
  int? get lobbyFlags;
  set lobbyFlags(int? value);
  @override
  bool? get autoSubscribe;
  set autoSubscribe(bool? value);
  @override
  int get unreadCount;
  set unreadCount(int value);

  /// Create a copy of Chat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatImplCopyWith<_$ChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

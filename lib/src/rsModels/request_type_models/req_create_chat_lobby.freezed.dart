// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'req_create_chat_lobby.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReqCreateChatLobby _$ReqCreateChatLobbyFromJson(Map<String, dynamic> json) {
  return _ReqCreateChatLobby.fromJson(json);
}

/// @nodoc
mixin _$ReqCreateChatLobby {
  @JsonKey(name: 'lobby_name')
  String? get lobbyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'lobby_identity')
  String? get lobbyIdentity => throw _privateConstructorUsedError;
  @JsonKey(name: 'lobby_topic')
  String? get lobbyTopic => throw _privateConstructorUsedError;
  @JsonKey(name: 'invited_friends')
  List<String> get invitedFriends => throw _privateConstructorUsedError;
  @JsonKey(name: 'lobby_privacy_type')
  int? get lobbyPrivacyType => throw _privateConstructorUsedError;

  /// Serializes this ReqCreateChatLobby to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReqCreateChatLobby
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReqCreateChatLobbyCopyWith<ReqCreateChatLobby> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReqCreateChatLobbyCopyWith<$Res> {
  factory $ReqCreateChatLobbyCopyWith(
          ReqCreateChatLobby value, $Res Function(ReqCreateChatLobby) then) =
      _$ReqCreateChatLobbyCopyWithImpl<$Res, ReqCreateChatLobby>;
  @useResult
  $Res call(
      {@JsonKey(name: 'lobby_name') String? lobbyName,
      @JsonKey(name: 'lobby_identity') String? lobbyIdentity,
      @JsonKey(name: 'lobby_topic') String? lobbyTopic,
      @JsonKey(name: 'invited_friends') List<String> invitedFriends,
      @JsonKey(name: 'lobby_privacy_type') int? lobbyPrivacyType});
}

/// @nodoc
class _$ReqCreateChatLobbyCopyWithImpl<$Res, $Val extends ReqCreateChatLobby>
    implements $ReqCreateChatLobbyCopyWith<$Res> {
  _$ReqCreateChatLobbyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReqCreateChatLobby
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lobbyName = freezed,
    Object? lobbyIdentity = freezed,
    Object? lobbyTopic = freezed,
    Object? invitedFriends = null,
    Object? lobbyPrivacyType = freezed,
  }) {
    return _then(_value.copyWith(
      lobbyName: freezed == lobbyName
          ? _value.lobbyName
          : lobbyName // ignore: cast_nullable_to_non_nullable
              as String?,
      lobbyIdentity: freezed == lobbyIdentity
          ? _value.lobbyIdentity
          : lobbyIdentity // ignore: cast_nullable_to_non_nullable
              as String?,
      lobbyTopic: freezed == lobbyTopic
          ? _value.lobbyTopic
          : lobbyTopic // ignore: cast_nullable_to_non_nullable
              as String?,
      invitedFriends: null == invitedFriends
          ? _value.invitedFriends
          : invitedFriends // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lobbyPrivacyType: freezed == lobbyPrivacyType
          ? _value.lobbyPrivacyType
          : lobbyPrivacyType // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReqCreateChatLobbyImplCopyWith<$Res>
    implements $ReqCreateChatLobbyCopyWith<$Res> {
  factory _$$ReqCreateChatLobbyImplCopyWith(_$ReqCreateChatLobbyImpl value,
          $Res Function(_$ReqCreateChatLobbyImpl) then) =
      __$$ReqCreateChatLobbyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'lobby_name') String? lobbyName,
      @JsonKey(name: 'lobby_identity') String? lobbyIdentity,
      @JsonKey(name: 'lobby_topic') String? lobbyTopic,
      @JsonKey(name: 'invited_friends') List<String> invitedFriends,
      @JsonKey(name: 'lobby_privacy_type') int? lobbyPrivacyType});
}

/// @nodoc
class __$$ReqCreateChatLobbyImplCopyWithImpl<$Res>
    extends _$ReqCreateChatLobbyCopyWithImpl<$Res, _$ReqCreateChatLobbyImpl>
    implements _$$ReqCreateChatLobbyImplCopyWith<$Res> {
  __$$ReqCreateChatLobbyImplCopyWithImpl(_$ReqCreateChatLobbyImpl _value,
      $Res Function(_$ReqCreateChatLobbyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReqCreateChatLobby
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lobbyName = freezed,
    Object? lobbyIdentity = freezed,
    Object? lobbyTopic = freezed,
    Object? invitedFriends = null,
    Object? lobbyPrivacyType = freezed,
  }) {
    return _then(_$ReqCreateChatLobbyImpl(
      lobbyName: freezed == lobbyName
          ? _value.lobbyName
          : lobbyName // ignore: cast_nullable_to_non_nullable
              as String?,
      lobbyIdentity: freezed == lobbyIdentity
          ? _value.lobbyIdentity
          : lobbyIdentity // ignore: cast_nullable_to_non_nullable
              as String?,
      lobbyTopic: freezed == lobbyTopic
          ? _value.lobbyTopic
          : lobbyTopic // ignore: cast_nullable_to_non_nullable
              as String?,
      invitedFriends: null == invitedFriends
          ? _value._invitedFriends
          : invitedFriends // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lobbyPrivacyType: freezed == lobbyPrivacyType
          ? _value.lobbyPrivacyType
          : lobbyPrivacyType // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReqCreateChatLobbyImpl implements _ReqCreateChatLobby {
  const _$ReqCreateChatLobbyImpl(
      {@JsonKey(name: 'lobby_name') this.lobbyName,
      @JsonKey(name: 'lobby_identity') this.lobbyIdentity,
      @JsonKey(name: 'lobby_topic') this.lobbyTopic,
      @JsonKey(name: 'invited_friends')
      final List<String> invitedFriends = const [],
      @JsonKey(name: 'lobby_privacy_type') this.lobbyPrivacyType})
      : _invitedFriends = invitedFriends;

  factory _$ReqCreateChatLobbyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReqCreateChatLobbyImplFromJson(json);

  @override
  @JsonKey(name: 'lobby_name')
  final String? lobbyName;
  @override
  @JsonKey(name: 'lobby_identity')
  final String? lobbyIdentity;
  @override
  @JsonKey(name: 'lobby_topic')
  final String? lobbyTopic;
  final List<String> _invitedFriends;
  @override
  @JsonKey(name: 'invited_friends')
  List<String> get invitedFriends {
    if (_invitedFriends is EqualUnmodifiableListView) return _invitedFriends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_invitedFriends);
  }

  @override
  @JsonKey(name: 'lobby_privacy_type')
  final int? lobbyPrivacyType;

  @override
  String toString() {
    return 'ReqCreateChatLobby(lobbyName: $lobbyName, lobbyIdentity: $lobbyIdentity, lobbyTopic: $lobbyTopic, invitedFriends: $invitedFriends, lobbyPrivacyType: $lobbyPrivacyType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReqCreateChatLobbyImpl &&
            (identical(other.lobbyName, lobbyName) ||
                other.lobbyName == lobbyName) &&
            (identical(other.lobbyIdentity, lobbyIdentity) ||
                other.lobbyIdentity == lobbyIdentity) &&
            (identical(other.lobbyTopic, lobbyTopic) ||
                other.lobbyTopic == lobbyTopic) &&
            const DeepCollectionEquality()
                .equals(other._invitedFriends, _invitedFriends) &&
            (identical(other.lobbyPrivacyType, lobbyPrivacyType) ||
                other.lobbyPrivacyType == lobbyPrivacyType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      lobbyName,
      lobbyIdentity,
      lobbyTopic,
      const DeepCollectionEquality().hash(_invitedFriends),
      lobbyPrivacyType);

  /// Create a copy of ReqCreateChatLobby
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReqCreateChatLobbyImplCopyWith<_$ReqCreateChatLobbyImpl> get copyWith =>
      __$$ReqCreateChatLobbyImplCopyWithImpl<_$ReqCreateChatLobbyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReqCreateChatLobbyImplToJson(
      this,
    );
  }
}

abstract class _ReqCreateChatLobby implements ReqCreateChatLobby {
  const factory _ReqCreateChatLobby(
          {@JsonKey(name: 'lobby_name') final String? lobbyName,
          @JsonKey(name: 'lobby_identity') final String? lobbyIdentity,
          @JsonKey(name: 'lobby_topic') final String? lobbyTopic,
          @JsonKey(name: 'invited_friends') final List<String> invitedFriends,
          @JsonKey(name: 'lobby_privacy_type') final int? lobbyPrivacyType}) =
      _$ReqCreateChatLobbyImpl;

  factory _ReqCreateChatLobby.fromJson(Map<String, dynamic> json) =
      _$ReqCreateChatLobbyImpl.fromJson;

  @override
  @JsonKey(name: 'lobby_name')
  String? get lobbyName;
  @override
  @JsonKey(name: 'lobby_identity')
  String? get lobbyIdentity;
  @override
  @JsonKey(name: 'lobby_topic')
  String? get lobbyTopic;
  @override
  @JsonKey(name: 'invited_friends')
  List<String> get invitedFriends;
  @override
  @JsonKey(name: 'lobby_privacy_type')
  int? get lobbyPrivacyType;

  /// Create a copy of ReqCreateChatLobby
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReqCreateChatLobbyImplCopyWith<_$ReqCreateChatLobbyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

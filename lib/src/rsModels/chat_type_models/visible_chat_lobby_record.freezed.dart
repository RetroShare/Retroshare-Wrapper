// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visible_chat_lobby_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VisibleChatLobbyRecord _$VisibleChatLobbyRecordFromJson(
    Map<String, dynamic> json) {
  return _VisibleChatLobbyRecord.fromJson(json);
}

/// @nodoc
mixin _$VisibleChatLobbyRecord {
  @JsonKey(name: 'lobby_id')
  ChatLobbyId? get lobbyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'lobby_name')
  String? get lobbyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'lobby_topic')
  String? get lobbyTopic => throw _privateConstructorUsedError;
  @JsonKey(name: 'participating_friends')
  List<String> get participatingFriends => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_number_of_peers')
  int? get totalNumberOfPeers => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_report_time')
  RstimeT? get lastReportTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'lobby_flags')
  int? get lobbyFlags => throw _privateConstructorUsedError;

  /// Serializes this VisibleChatLobbyRecord to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VisibleChatLobbyRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VisibleChatLobbyRecordCopyWith<VisibleChatLobbyRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisibleChatLobbyRecordCopyWith<$Res> {
  factory $VisibleChatLobbyRecordCopyWith(VisibleChatLobbyRecord value,
          $Res Function(VisibleChatLobbyRecord) then) =
      _$VisibleChatLobbyRecordCopyWithImpl<$Res, VisibleChatLobbyRecord>;
  @useResult
  $Res call(
      {@JsonKey(name: 'lobby_id') ChatLobbyId? lobbyId,
      @JsonKey(name: 'lobby_name') String? lobbyName,
      @JsonKey(name: 'lobby_topic') String? lobbyTopic,
      @JsonKey(name: 'participating_friends') List<String> participatingFriends,
      @JsonKey(name: 'total_number_of_peers') int? totalNumberOfPeers,
      @JsonKey(name: 'last_report_time') RstimeT? lastReportTime,
      @JsonKey(name: 'lobby_flags') int? lobbyFlags});

  $ChatLobbyIdCopyWith<$Res>? get lobbyId;
  $RstimeTCopyWith<$Res>? get lastReportTime;
}

/// @nodoc
class _$VisibleChatLobbyRecordCopyWithImpl<$Res,
        $Val extends VisibleChatLobbyRecord>
    implements $VisibleChatLobbyRecordCopyWith<$Res> {
  _$VisibleChatLobbyRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VisibleChatLobbyRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lobbyId = freezed,
    Object? lobbyName = freezed,
    Object? lobbyTopic = freezed,
    Object? participatingFriends = null,
    Object? totalNumberOfPeers = freezed,
    Object? lastReportTime = freezed,
    Object? lobbyFlags = freezed,
  }) {
    return _then(_value.copyWith(
      lobbyId: freezed == lobbyId
          ? _value.lobbyId
          : lobbyId // ignore: cast_nullable_to_non_nullable
              as ChatLobbyId?,
      lobbyName: freezed == lobbyName
          ? _value.lobbyName
          : lobbyName // ignore: cast_nullable_to_non_nullable
              as String?,
      lobbyTopic: freezed == lobbyTopic
          ? _value.lobbyTopic
          : lobbyTopic // ignore: cast_nullable_to_non_nullable
              as String?,
      participatingFriends: null == participatingFriends
          ? _value.participatingFriends
          : participatingFriends // ignore: cast_nullable_to_non_nullable
              as List<String>,
      totalNumberOfPeers: freezed == totalNumberOfPeers
          ? _value.totalNumberOfPeers
          : totalNumberOfPeers // ignore: cast_nullable_to_non_nullable
              as int?,
      lastReportTime: freezed == lastReportTime
          ? _value.lastReportTime
          : lastReportTime // ignore: cast_nullable_to_non_nullable
              as RstimeT?,
      lobbyFlags: freezed == lobbyFlags
          ? _value.lobbyFlags
          : lobbyFlags // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of VisibleChatLobbyRecord
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

  /// Create a copy of VisibleChatLobbyRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RstimeTCopyWith<$Res>? get lastReportTime {
    if (_value.lastReportTime == null) {
      return null;
    }

    return $RstimeTCopyWith<$Res>(_value.lastReportTime!, (value) {
      return _then(_value.copyWith(lastReportTime: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VisibleChatLobbyRecordImplCopyWith<$Res>
    implements $VisibleChatLobbyRecordCopyWith<$Res> {
  factory _$$VisibleChatLobbyRecordImplCopyWith(
          _$VisibleChatLobbyRecordImpl value,
          $Res Function(_$VisibleChatLobbyRecordImpl) then) =
      __$$VisibleChatLobbyRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'lobby_id') ChatLobbyId? lobbyId,
      @JsonKey(name: 'lobby_name') String? lobbyName,
      @JsonKey(name: 'lobby_topic') String? lobbyTopic,
      @JsonKey(name: 'participating_friends') List<String> participatingFriends,
      @JsonKey(name: 'total_number_of_peers') int? totalNumberOfPeers,
      @JsonKey(name: 'last_report_time') RstimeT? lastReportTime,
      @JsonKey(name: 'lobby_flags') int? lobbyFlags});

  @override
  $ChatLobbyIdCopyWith<$Res>? get lobbyId;
  @override
  $RstimeTCopyWith<$Res>? get lastReportTime;
}

/// @nodoc
class __$$VisibleChatLobbyRecordImplCopyWithImpl<$Res>
    extends _$VisibleChatLobbyRecordCopyWithImpl<$Res,
        _$VisibleChatLobbyRecordImpl>
    implements _$$VisibleChatLobbyRecordImplCopyWith<$Res> {
  __$$VisibleChatLobbyRecordImplCopyWithImpl(
      _$VisibleChatLobbyRecordImpl _value,
      $Res Function(_$VisibleChatLobbyRecordImpl) _then)
      : super(_value, _then);

  /// Create a copy of VisibleChatLobbyRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lobbyId = freezed,
    Object? lobbyName = freezed,
    Object? lobbyTopic = freezed,
    Object? participatingFriends = null,
    Object? totalNumberOfPeers = freezed,
    Object? lastReportTime = freezed,
    Object? lobbyFlags = freezed,
  }) {
    return _then(_$VisibleChatLobbyRecordImpl(
      lobbyId: freezed == lobbyId
          ? _value.lobbyId
          : lobbyId // ignore: cast_nullable_to_non_nullable
              as ChatLobbyId?,
      lobbyName: freezed == lobbyName
          ? _value.lobbyName
          : lobbyName // ignore: cast_nullable_to_non_nullable
              as String?,
      lobbyTopic: freezed == lobbyTopic
          ? _value.lobbyTopic
          : lobbyTopic // ignore: cast_nullable_to_non_nullable
              as String?,
      participatingFriends: null == participatingFriends
          ? _value._participatingFriends
          : participatingFriends // ignore: cast_nullable_to_non_nullable
              as List<String>,
      totalNumberOfPeers: freezed == totalNumberOfPeers
          ? _value.totalNumberOfPeers
          : totalNumberOfPeers // ignore: cast_nullable_to_non_nullable
              as int?,
      lastReportTime: freezed == lastReportTime
          ? _value.lastReportTime
          : lastReportTime // ignore: cast_nullable_to_non_nullable
              as RstimeT?,
      lobbyFlags: freezed == lobbyFlags
          ? _value.lobbyFlags
          : lobbyFlags // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VisibleChatLobbyRecordImpl implements _VisibleChatLobbyRecord {
  const _$VisibleChatLobbyRecordImpl(
      {@JsonKey(name: 'lobby_id') this.lobbyId,
      @JsonKey(name: 'lobby_name') this.lobbyName,
      @JsonKey(name: 'lobby_topic') this.lobbyTopic,
      @JsonKey(name: 'participating_friends')
      final List<String> participatingFriends = const [],
      @JsonKey(name: 'total_number_of_peers') this.totalNumberOfPeers,
      @JsonKey(name: 'last_report_time') this.lastReportTime,
      @JsonKey(name: 'lobby_flags') this.lobbyFlags})
      : _participatingFriends = participatingFriends;

  factory _$VisibleChatLobbyRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$VisibleChatLobbyRecordImplFromJson(json);

  @override
  @JsonKey(name: 'lobby_id')
  final ChatLobbyId? lobbyId;
  @override
  @JsonKey(name: 'lobby_name')
  final String? lobbyName;
  @override
  @JsonKey(name: 'lobby_topic')
  final String? lobbyTopic;
  final List<String> _participatingFriends;
  @override
  @JsonKey(name: 'participating_friends')
  List<String> get participatingFriends {
    if (_participatingFriends is EqualUnmodifiableListView)
      return _participatingFriends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participatingFriends);
  }

  @override
  @JsonKey(name: 'total_number_of_peers')
  final int? totalNumberOfPeers;
  @override
  @JsonKey(name: 'last_report_time')
  final RstimeT? lastReportTime;
  @override
  @JsonKey(name: 'lobby_flags')
  final int? lobbyFlags;

  @override
  String toString() {
    return 'VisibleChatLobbyRecord(lobbyId: $lobbyId, lobbyName: $lobbyName, lobbyTopic: $lobbyTopic, participatingFriends: $participatingFriends, totalNumberOfPeers: $totalNumberOfPeers, lastReportTime: $lastReportTime, lobbyFlags: $lobbyFlags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisibleChatLobbyRecordImpl &&
            (identical(other.lobbyId, lobbyId) || other.lobbyId == lobbyId) &&
            (identical(other.lobbyName, lobbyName) ||
                other.lobbyName == lobbyName) &&
            (identical(other.lobbyTopic, lobbyTopic) ||
                other.lobbyTopic == lobbyTopic) &&
            const DeepCollectionEquality()
                .equals(other._participatingFriends, _participatingFriends) &&
            (identical(other.totalNumberOfPeers, totalNumberOfPeers) ||
                other.totalNumberOfPeers == totalNumberOfPeers) &&
            (identical(other.lastReportTime, lastReportTime) ||
                other.lastReportTime == lastReportTime) &&
            (identical(other.lobbyFlags, lobbyFlags) ||
                other.lobbyFlags == lobbyFlags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      lobbyId,
      lobbyName,
      lobbyTopic,
      const DeepCollectionEquality().hash(_participatingFriends),
      totalNumberOfPeers,
      lastReportTime,
      lobbyFlags);

  /// Create a copy of VisibleChatLobbyRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisibleChatLobbyRecordImplCopyWith<_$VisibleChatLobbyRecordImpl>
      get copyWith => __$$VisibleChatLobbyRecordImplCopyWithImpl<
          _$VisibleChatLobbyRecordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VisibleChatLobbyRecordImplToJson(
      this,
    );
  }
}

abstract class _VisibleChatLobbyRecord implements VisibleChatLobbyRecord {
  const factory _VisibleChatLobbyRecord(
          {@JsonKey(name: 'lobby_id') final ChatLobbyId? lobbyId,
          @JsonKey(name: 'lobby_name') final String? lobbyName,
          @JsonKey(name: 'lobby_topic') final String? lobbyTopic,
          @JsonKey(name: 'participating_friends')
          final List<String> participatingFriends,
          @JsonKey(name: 'total_number_of_peers') final int? totalNumberOfPeers,
          @JsonKey(name: 'last_report_time') final RstimeT? lastReportTime,
          @JsonKey(name: 'lobby_flags') final int? lobbyFlags}) =
      _$VisibleChatLobbyRecordImpl;

  factory _VisibleChatLobbyRecord.fromJson(Map<String, dynamic> json) =
      _$VisibleChatLobbyRecordImpl.fromJson;

  @override
  @JsonKey(name: 'lobby_id')
  ChatLobbyId? get lobbyId;
  @override
  @JsonKey(name: 'lobby_name')
  String? get lobbyName;
  @override
  @JsonKey(name: 'lobby_topic')
  String? get lobbyTopic;
  @override
  @JsonKey(name: 'participating_friends')
  List<String> get participatingFriends;
  @override
  @JsonKey(name: 'total_number_of_peers')
  int? get totalNumberOfPeers;
  @override
  @JsonKey(name: 'last_report_time')
  RstimeT? get lastReportTime;
  @override
  @JsonKey(name: 'lobby_flags')
  int? get lobbyFlags;

  /// Create a copy of VisibleChatLobbyRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisibleChatLobbyRecordImplCopyWith<_$VisibleChatLobbyRecordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

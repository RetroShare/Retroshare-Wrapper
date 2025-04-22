import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retroshare_api_wrapper/src/rs_models.dart';

part 'chat.freezed.dart';
part 'chat.g.dart';

@freezed
class Chat with _$Chat {
  const factory Chat({
    String? chatId,
    String? chatName,
    required String ownIdToUse,
    required String interlocutorId,
    String? lobbyTopic,
    required bool isPublic,
    int? numberOfParticipants,
    int? lobbyFlags,
    bool? autoSubscribe,
    @Default(0) int unreadCount,
  }) = _Chat;
  const Chat._();

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);

  /// Instance method to determine if the current chat is public
  bool imPublicChat() => Chat.isPublicChat(lobbyFlags ?? 0);

  /// Static method for checking public flag value
  static bool isPublicChat(int lobbyFlags) =>
      lobbyFlags == 4 || lobbyFlags == 20;
}

class ChatUtils {
  static final Map<String, Map<String, String>> _chatToFromMap = {};

  static String? getDistantChatId(String to, String from) =>
      _chatToFromMap[to]?[from] ?? '';

  static bool distantChatExists(String to, String from) =>
      _chatToFromMap[to]?.containsKey(from) ?? false;

  static void addDistantChat(String to, String from, String distantId) {
    _chatToFromMap.putIfAbsent(to, () => {})[from] = distantId;
  }

  static bool distantChatExistsStore(
    String? distantChatId,
    Map<String, dynamic>? store,
  ) =>
      (distantChatId?.isNotEmpty ?? false) &&
      (store?.containsKey(distantChatId) ?? false);
}

Chat fromVisibleChatLobbyRecord(VisibleChatLobbyRecord chatLobbyRecord) {
  return Chat(
    chatId: chatLobbyRecord.lobbyId?.xstr64,
    isPublic: chatLobbyRecord.lobbyFlags == 1,
    lobbyTopic: chatLobbyRecord.lobbyTopic,
    chatName: chatLobbyRecord.lobbyName,
    numberOfParticipants: chatLobbyRecord.totalNumberOfPeers,
    ownIdToUse: '',
    interlocutorId: '',
    lobbyFlags: chatLobbyRecord.lobbyFlags,
  );
}

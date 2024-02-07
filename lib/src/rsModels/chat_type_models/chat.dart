part of rsModels;

class Chat {
  String? chatId;
  String? chatName;
  String ownIdToUse;
  String interlocutorId;
  String? lobbyTopic;
  bool isPublic;
  int? numberOfParticipants;
  int? lobbyFlags;
  bool? autoSubscribe;
  int unreadCount;

  Chat(
      {required this.chatId,
      required this.chatName,
      required this.lobbyTopic,
      required this.ownIdToUse,
      required this.interlocutorId,
      required this.isPublic,
      required this.numberOfParticipants,
      required this.lobbyFlags,
      required this.autoSubscribe,
      this.unreadCount = 0});

  /// Distant Chat list
  /// Where:
  /// Map<To, Map<from, distantChatId>>
  static Map<String, Map<String, String>>? _chatToFromMap;

  static String? getDistantChatId(String to, String from) {
    if (distantChatExists(to, from)) return _chatToFromMap![to]?[from];
    return '';
  }

  // This is: if we don't have a distant chat with this to and from
  // Should be a better way to write this... :
  static bool distantChatExists(String to, String from) {
    if ((_chatToFromMap?.isEmpty ?? true) ||
        (_chatToFromMap?[to]?.isEmpty ?? true) ||
        (_chatToFromMap![to]?[from]?.isEmpty ?? true)) return false;
    return true;
  }

  static void addDistantChat(String to, String from, String distantId) {
    if (!distantChatExists(to, from)) {
      // If distant chat doesn't exist
      // Should be a better way to do that
      _chatToFromMap ??= {};
      _chatToFromMap?[to] ??= {};
      _chatToFromMap![to]?[from] = distantId;
    }
  }

  /// Function used to known if a distant chat exists (is already stored) by it
  /// [distantChatId].
  static bool distantChatExistsStore(String distantChatId, store) {
    if ((distantChatId?.isNotEmpty ?? false) &&
        ((store?.isNotEmpty ?? false) && (store[distantChatId] != null))) {
      return true;
    }
    return false;
  }

  static Chat fromVisibleChatLobbyRecord(
      VisibleChatLobbyRecord chatLobbyRecord) {
    return Chat(
      chatId: chatLobbyRecord.lobbyId?.xstr64,
      isPublic: chatLobbyRecord.lobbyFlags == 1 ? true : false,
      lobbyTopic: chatLobbyRecord.lobbyTopic,
      chatName: chatLobbyRecord.lobbyName,
      numberOfParticipants: chatLobbyRecord.totalNumberOfPeers, ownIdToUse: '', interlocutorId: '', lobbyFlags: null, autoSubscribe: null,
    );
  }

  /// [Lobby flags]
  /// Public = 4
  /// Public + signed = 20
  /// Private = 0
  /// Private + signed = 16
  static bool isPublicChat(int lobbyFlags) =>
      lobbyFlags == 4 || lobbyFlags == 20 ? true : false;
  bool imPublicChat() => Chat.isPublicChat(lobbyFlags!);
}

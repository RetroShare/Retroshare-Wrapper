
part of rsModels;

enum RsEventType {
  /// Used internally to detect invalid event type passed = 0,
  __NONE,

  /// @see RsBroadcastDiscovery = 1,
  BROADCAST_DISCOVERY,

  /// @see RsDiscPendingPgpReceivedEvent = 2,
  GOSSIP_DISCOVERY,

  /// @see AuthSSL = 3,
  AUTHSSL_CONNECTION_AUTENTICATION,

  /// @see pqissl  = 4,
  PEER_CONNECTION,

  /// @see RsGxsChanges, used also in @see RsGxsBroadcast  = 5,
  GXS_CHANGES,

  /// Emitted when a peer state changes, @see RsPeers  = 6,
  PEER_STATE_CHANGED,

  /// @see RsMailStatusEvent = 7,
  MAIL_STATUS,

  /// @see RsGxsCircleEvent   = 8,
  GXS_CIRCLES,

  /// @see RsGxsChannelEvent = 9,
  GXS_CHANNELS,

  /// @see RsGxsForumEvent = 10,
  GXS_FORUMS,

  /// @see RsGxsPostedEvent  = 11,
  GXS_POSTED,

  /// @see RsGxsPostedEvent   = 12,
  GXS_IDENTITY,

  /// @see RsFiles  = 13,
  SHARED_DIRECTORIES,

  /// @see RsFiles  = 14,
  FILE_TRANSFER,

  /// @see RsMsgs    = 15,
  CHAT_MESSAGE,

  /// @see rspeers.h  = 16,
  NETWORK,

  /// @see rsfiles.h = 17
  FILE_PERCEPTUAL_SEARCH_RESULT_RECEIVED,

  /// Following two events doesn't exists on RS code. Is needed because the event
  /// FILE_HASHING_COMPLETED has the value 20, and Dart doesn't accept enums with
  /// given values.
  /// NOT USE = 18
  VOID,

  /// NOT USE = 19
  VOID_2,

  /// Emitted to update library clients about file hashing being completed = 20
  FILE_HASHING_COMPLETED
}

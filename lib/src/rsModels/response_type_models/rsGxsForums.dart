
part of rsModels;

enum RsForumEventCode {
  UNKNOWN, //= 0x00,
  NEW_FORUM, //= 0x01, /// emitted when new forum is received
  UPDATED_FORUM, //= 0x02, /// emitted when existing forum is updated
  NEW_MESSAGE, //= 0x03, /// new message reeived in a particular forum
  UPDATED_MESSAGE, //= 0x04, /// existing message has been updated in a particular forum
  SUBSCRIBE_STATUS_CHANGED, //= 0x05, /// forum was subscribed or unsubscribed
  READ_STATUS_CHANGED, //= 0x06, /// msg was read or marked unread
  STATISTICS_CHANGED, //= 0x07, /// suppliers and how many messages they have changed
  MODERATOR_LIST_CHANGED, //= 0x08, /// forum moderation list has changed.
  VOID, //= 0x09 this is deleted from RS code but is needed here to correct following values
  SYNC_PARAMETERS_UPDATED, //= 0x0a, /// sync and storage times have changed
  PINNED_POSTS_CHANGED, //= 0x0b, /// some posts where pinned or un-pinned
  DELETED_FORUM, //= 0x0c, /// forum was deleted by cleaning
  DELETED_POST, //= 0x0d,  /// Post deleted (usually by cleaning)

  /// Distant search result received
  DISTANT_SEARCH_RESULT, //= 0x0e
}

/// Model for RS class RsMsgMetaData
///
/// Returned with /rsGxsForums/getForumMsgMetaData ["msgMetas"]
class RsMsgMetaData {
   String mGroupId;
   String mMsgId;
   String mThreadId;
   String mParentId;
   String mOrigMsgId;
   String mAuthorId;
  // This in elrepo.io is a JSON object
   String mMsgName;
   RsInt64 mPublishTs;

  /// the lower 16 bits for service, upper 16 bits for GXS
  /// @todo mixing service level flags and GXS level flag into the same member
  /// is prone to confusion, use separated members for those things, this could
  /// be done without breaking network retro-compatibility */
   int mMsgFlags;

  /// the first 16 bits for service, last 16 for GXS
  /// @todo mixing service level flags and GXS level flag into the same member
  /// is prone to confusion, use separated members for those things, this could
  /// be done without breaking network retro-compatibility */
  int mMsgStatus;
  RsInt64 mChildTs; // Timestamp
  String mServiceString; // Service Specific Free-Form extra storage.

  /// Used to store the raw json if created fromJson constructor
  ///
  /// Usefull when the object returned is not a pure RsMsgMetaData, for example,
  /// for local search, that return a very similar object called RsGxsSearchResult
  /// but containing usefull attributes like "distance", used for perceptual search
  Map<String, dynamic> rawJson;

  RsMsgMetaData(
      {this.mGroupId,
      this.mMsgId,
      this.mThreadId,
      this.mParentId,
      this.mOrigMsgId,
      this.mAuthorId,
      this.mMsgName,
      this.mPublishTs,
      this.mMsgFlags,
      this.mMsgStatus,
      this.mChildTs,
      this.mServiceString,
      this.rawJson});

  RsMsgMetaData.fromJson(Map<String, dynamic> jsonString)
      : this(
          mGroupId: jsonString['mGroupId'],
          mMsgId: jsonString['mMsgId'],
          mThreadId: jsonString['mThreadId'],
          mParentId: jsonString['mParentId'],
          mOrigMsgId: jsonString['mOrigMsgId'],
          mAuthorId: jsonString['mAuthorId'],
          mMsgName: jsonString['mMsgName'],
          mPublishTs: RsInt64.fromJson(jsonString['mPublishTs']),
          mMsgFlags: jsonString['mMsgFlags'],
          mMsgStatus: jsonString['mMsgStatus'],
          // For search results this doesn't exist check RsGxsSearchResult
          mChildTs: jsonString['mChildTs'] != null
              ? RsInt64.fromJson(jsonString['mChildTs'])
              : RsInt64(),
          mServiceString: jsonString['mServiceString'],
          rawJson: jsonString,
        );
}

// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retroshare_api_wrapper/src/rs_models.dart';

part 'rs_gxs_forums.freezed.dart';
part 'rs_gxs_forums.g.dart';

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

@freezed
class RsMsgMetaData with _$RsMsgMetaData {
  const factory RsMsgMetaData({
    required String mGroupId, // ID of the group where the message belongs.
    required String mMsgId, // ID of the message.
    required String mThreadId, // ID of the thread the message belongs to.
    required String mParentId, // Parent message ID (for threads).
    required String mOrigMsgId, // Original message ID (if this is a reply).
    required String mAuthorId, // ID of the message author.
    required String mMsgName, // Name of the message.
    required RsInt64 mPublishTs, // Timestamp when the message was published.
    required int mMsgFlags, // Message flags indicating specific attributes.
    required int mMsgStatus, // Status of the message (e.g., read, unread).
    required RsInt64 mChildTs, // Timestamp for child messages (if any).
    required String
        mServiceString, // Free-form string for service-specific data.
    required Map<String, dynamic>
        rawJson, // Raw JSON used for additional data storage.
  }) = _RsMsgMetaData;

  // Factory method for converting a JSON object to RsMsgMetaData
  factory RsMsgMetaData.fromJson(Map<String, dynamic> json) =>
      _$RsMsgMetaDataFromJson(json);
}

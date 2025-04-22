// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rs_gxs_forums.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RsMsgMetaDataImpl _$$RsMsgMetaDataImplFromJson(Map<String, dynamic> json) =>
    _$RsMsgMetaDataImpl(
      mGroupId: json['mGroupId'] as String,
      mMsgId: json['mMsgId'] as String,
      mThreadId: json['mThreadId'] as String,
      mParentId: json['mParentId'] as String,
      mOrigMsgId: json['mOrigMsgId'] as String,
      mAuthorId: json['mAuthorId'] as String,
      mMsgName: json['mMsgName'] as String,
      mPublishTs: RsInt64.fromJson(json['mPublishTs'] as Map<String, dynamic>),
      mMsgFlags: (json['mMsgFlags'] as num).toInt(),
      mMsgStatus: (json['mMsgStatus'] as num).toInt(),
      mChildTs: RsInt64.fromJson(json['mChildTs'] as Map<String, dynamic>),
      mServiceString: json['mServiceString'] as String,
      rawJson: json['rawJson'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$RsMsgMetaDataImplToJson(_$RsMsgMetaDataImpl instance) =>
    <String, dynamic>{
      'mGroupId': instance.mGroupId,
      'mMsgId': instance.mMsgId,
      'mThreadId': instance.mThreadId,
      'mParentId': instance.mParentId,
      'mOrigMsgId': instance.mOrigMsgId,
      'mAuthorId': instance.mAuthorId,
      'mMsgName': instance.mMsgName,
      'mPublishTs': instance.mPublishTs,
      'mMsgFlags': instance.mMsgFlags,
      'mMsgStatus': instance.mMsgStatus,
      'mChildTs': instance.mChildTs,
      'mServiceString': instance.mServiceString,
      'rawJson': instance.rawJson,
    };

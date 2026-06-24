// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rs_identity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IdentityImpl _$$IdentityImplFromJson(Map<String, dynamic> json) =>
    _$IdentityImpl(
      mId: json['mId'] as String,
      pgpId: json['pgpId'] as String?,
      name: json['name'] as String?,
      avatar: json['avatar'] as String?,
      signed: json['signed'] as bool,
      isContact: json['isContact'] as bool,
      status: (json['status'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$IdentityImplToJson(_$IdentityImpl instance) =>
    <String, dynamic>{
      'mId': instance.mId,
      'pgpId': instance.pgpId,
      'name': instance.name,
      'avatar': instance.avatar,
      'signed': instance.signed,
      'isContact': instance.isContact,
      'status': instance.status,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'req_request_identity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReqRequestIdentityImpl _$$ReqRequestIdentityImplFromJson(
        Map<String, dynamic> json) =>
    _$ReqRequestIdentityImpl(
      id: json['id'] as String?,
      peers:
          (json['peers'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
    );

Map<String, dynamic> _$$ReqRequestIdentityImplToJson(
        _$ReqRequestIdentityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'peers': instance.peers,
    };

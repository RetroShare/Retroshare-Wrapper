// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rs_accounts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountImpl _$$AccountImplFromJson(Map<String, dynamic> json) =>
    _$AccountImpl(
      locationId: json['locationId'] as String,
      pgpId: json['pgpId'] as String,
      locationName: json['locationName'] as String,
      pgpName: json['pgpName'] as String,
    );

Map<String, dynamic> _$$AccountImplToJson(_$AccountImpl instance) =>
    <String, dynamic>{
      'locationId': instance.locationId,
      'pgpId': instance.pgpId,
      'locationName': instance.locationName,
      'pgpName': instance.pgpName,
    };

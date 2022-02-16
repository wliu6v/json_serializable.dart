// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      JsonUtil.parseIntNullable(json['id']),
      JsonUtil.parseString(json['name']),
      JsonUtil.parseString(json['avatar']),
      JsonUtil.parseDateNullable(json['time1']),
      JsonUtil.parseDate(json['time2']),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar,
      'time1': instance.time1?.toIso8601String(),
      'time2': instance.time2.toIso8601String(),
    };

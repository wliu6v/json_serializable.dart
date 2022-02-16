// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Info _$InfoFromJson(Map<String, dynamic> json) => Info(
      JsonUtil.parseMapNullable(json['user']) == null
          ? null
          : User.fromJson(JsonUtil.parseMapNullable(json['user'])!),
      JsonUtil.parseList(json['userList2'], (e) => User.fromJson(e!)),
      JsonUtil.parseList(
          json['userQuesList3'], (e) => e == null ? null : User.fromJson(e!)),
      JsonUtil.parseListNullable(
          json['userQuesList2'], (e) => e == null ? null : User.fromJson(e!)),
    );

Map<String, dynamic> _$InfoToJson(Info instance) => <String, dynamic>{
      'user': instance.user,
      'userList2': instance.userList2,
      'userQuesList3': instance.userQuesList3,
      'userQuesList2': instance.userQuesList2,
    };

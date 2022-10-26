// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: JsonUtil.parseIntNullable(json['id']),
      name: JsonUtil.parseString(json['name']),
      avatar: JsonUtil.parseString(json['avatar']),
      type: $enumDecode(_$UserTypeEnumMap, json['type'],
          unknownValue: UserType.typeA),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar,
      'type': _$UserTypeEnumMap[instance.type],
    };

const _$UserTypeEnumMap = {
  UserType.typeA: 1,
  UserType.typeB: 2,
};

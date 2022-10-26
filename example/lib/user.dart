import 'package:example/util/json_util.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  int? id;
  String name;
  String avatar;
  @JsonKey(unknownEnumValue: UserType.typeA)
  UserType type;

  User({
    required this.id,
    required this.name,
    required this.avatar,
    required this.type,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

enum UserType {
  @JsonValue(1)
  typeA,
  @JsonValue(2)
  typeB,
}

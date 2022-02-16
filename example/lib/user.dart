import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  int? id;
  String name;
  String avatar;
  DateTime? time1;
  DateTime time2;

  User(
    this.id,
    this.name,
    this.avatar,
    this.time1,
    this.time2,
  );

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

import 'package:example/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'thread.g.dart';

@JsonSerializable()
class Info {
  User? user;

  List<User> userList2;
  List<User?> userQuesList3;
  List<User?>? userQuesList2;

  Info(this.user, this.userList2, this.userQuesList3, this.userQuesList2);

  factory Info.fromJson(dynamic json) => _$InfoFromJson(json);
  Map<String, dynamic> toJson() => _$InfoToJson(this);
}

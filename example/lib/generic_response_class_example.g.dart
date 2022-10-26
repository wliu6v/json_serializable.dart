// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic_response_class_example.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse<T> _$BaseResponseFromJson<T>(Map<String, dynamic> json) =>
    BaseResponse<T>(
      status: JsonUtil.parseIntNullable(json['status']),
      msg: JsonUtil.parseStringNullable(json['msg']),
      data: BaseResponse._dataFromJson(json['data'] as Object),
    );

Article _$ArticleFromJson(Map<String, dynamic> json) => Article(
      id: JsonUtil.parseInt(json['id']),
      title: JsonUtil.parseString(json['title']),
      author: JsonUtil.parseMapNullable(json['author']) == null
          ? null
          : User.fromJson(JsonUtil.parseMapNullable(json['author'])!),
      comments: JsonUtil.parseListNullable(
          json['comments'], (e) => Comment.fromJson(e!)),
    );

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: JsonUtil.parseIntNullable(json['id']),
      email: JsonUtil.parseStringNullable(json['email']),
    );

Comment _$CommentFromJson(Map<String, dynamic> json) => Comment(
      id: JsonUtil.parseIntNullable(json['id']),
      content: JsonUtil.parseStringNullable(json['content']),
    );

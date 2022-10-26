// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_converter_example.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DateTimeExample _$DateTimeExampleFromJson(Map<String, dynamic> json) =>
    DateTimeExample(
      const _DateTimeEpochConverter().fromJson(json['when'] as int),
    );

Map<String, dynamic> _$DateTimeExampleToJson(DateTimeExample instance) =>
    <String, dynamic>{
      'when': const _DateTimeEpochConverter().toJson(instance.when),
    };

GenericCollection<T> _$GenericCollectionFromJson<T>(
        Map<String, dynamic> json) =>
    GenericCollection<T>(
      page: JsonUtil.parseIntNullable(json['page']),
      totalResults: JsonUtil.parseIntNullable(json['total_results']),
      totalPages: JsonUtil.parseIntNullable(json['total_pages']),
      results: JsonUtil.parseListNullable(
          json['results'], (e) => _Converter<T>().fromJson(e)),
    );

Map<String, dynamic> _$GenericCollectionToJson<T>(
        GenericCollection<T> instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total_results': instance.totalResults,
      'total_pages': instance.totalPages,
      'results': instance.results?.map(_Converter<T>().toJson).toList(),
    };

CustomResult _$CustomResultFromJson(Map<String, dynamic> json) => CustomResult(
      JsonUtil.parseString(json['name']),
      JsonUtil.parseInt(json['size']),
    );

Map<String, dynamic> _$CustomResultToJson(CustomResult instance) =>
    <String, dynamic>{
      'name': instance.name,
      'size': instance.size,
    };

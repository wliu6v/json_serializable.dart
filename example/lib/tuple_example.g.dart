// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tuple_example.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tuple<T, S> _$TupleFromJson<T, S>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
  S Function(Object? json) fromJsonS,
) =>
    Tuple<T, S>(
      fromJsonT(json['value1']),
      fromJsonS(json['value2']),
    );

Map<String, dynamic> _$TupleToJson<T, S>(
  Tuple<T, S> instance,
  Object? Function(T value) toJsonT,
  Object? Function(S value) toJsonS,
) =>
    <String, dynamic>{
      'value1': toJsonT(instance.value1),
      'value2': toJsonS(instance.value2),
    };

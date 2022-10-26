// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Person _$PersonFromJson(Map<String, dynamic> json) => Person(
      JsonUtil.parseString(json['firstName']),
      JsonUtil.parseString(json['lastName']),
      JsonUtil.parseDate(json['date-of-birth']),
      middleName: JsonUtil.parseStringNullable(json['middleName']),
      lastOrder: JsonUtil.parseDateNullable(json['last-order']),
      orders:
          JsonUtil.parseListNullable(json['orders'], (e) => Order.fromJson(e!)),
    );

Map<String, dynamic> _$PersonToJson(Person instance) {
  final val = <String, dynamic>{
    'firstName': instance.firstName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('middleName', instance.middleName);
  val['lastName'] = instance.lastName;
  val['date-of-birth'] = instance.dateOfBirth.toIso8601String();
  val['last-order'] = instance.lastOrder?.toIso8601String();
  val['orders'] = instance.orders;
  return val;
}

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      Order._dateTimeFromEpochUs(json['date'] as int),
    )
      ..count = JsonUtil.parseIntNullable(json['count'])
      ..itemNumber = JsonUtil.parseIntNullable(json['itemNumber'])
      ..isRushed = JsonUtil.parseBoolNullable(json['isRushed'])
      ..item = JsonUtil.parseMapNullable(json['item']) == null
          ? null
          : Item.fromJson(JsonUtil.parseMapNullable(json['item'])!)
      ..prepTime = Order._durationFromMilliseconds(json['prep-time'] as int?);

Map<String, dynamic> _$OrderToJson(Order instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  writeNotNull('itemNumber', instance.itemNumber);
  writeNotNull('isRushed', instance.isRushed);
  writeNotNull('item', instance.item);
  writeNotNull('prep-time', Order._durationToMilliseconds(instance.prepTime));
  writeNotNull('date', Order._dateTimeToEpochUs(instance.date));
  return val;
}

Item _$ItemFromJson(Map<String, dynamic> json) => Item()
  ..count = JsonUtil.parseIntNullable(json['count'])
  ..itemNumber = JsonUtil.parseIntNullable(json['itemNumber'])
  ..isRushed = JsonUtil.parseBoolNullable(json['isRushed']);

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'count': instance.count,
      'itemNumber': instance.itemNumber,
      'isRushed': instance.isRushed,
    };

// **************************************************************************
// JsonLiteralGenerator
// **************************************************************************

final _$glossaryDataJsonLiteral = {
  'glossary': {
    'title': 'example glossary',
    'GlossDiv': {
      'title': 'S',
      'GlossList': {
        'GlossEntry': {
          'ID': 'SGML',
          'SortAs': 'SGML',
          'GlossTerm': 'Standard Generalized Markup Language',
          'Acronym': 'SGML',
          'Abbrev': 'ISO 8879:1986',
          'GlossDef': {
            'para': 'A meta-markup language, used to create markup languages.',
            'GlossSeeAlso': ['GML', 'XML']
          },
          'GlossSee': 'markup'
        }
      }
    }
  }
};

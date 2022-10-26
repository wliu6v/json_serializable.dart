class JsonUtil {
  static const defaultBoolValue = false;
  static const defaultStringValue = '';
  static const defaultIntValue = 0;
  static const defaultDoubleValue = 0.0;
  static const defaultMapValue = <String, dynamic>{};

  static int? dateTimeToMilliseconds(DateTime? dateTime) =>
      dateTime?.millisecondsSinceEpoch;

  static int? dateTimeStringToMillisecond(String? datetimeStr) {
    if (datetimeStr == null) {
      return null;
    } else {
      return DateTime.parse(datetimeStr).millisecondsSinceEpoch;
    }
  }

  static int parseInt(dynamic value, {int defaultValue = defaultIntValue}) =>
      parseIntNullable(value) ?? defaultValue;

  static Map<String, T> parseMap<String, T>(dynamic value,
          {defaultValue = defaultMapValue}) =>
      parseMapNullable(value) ?? (defaultValue as Map<String, T>);

  static double parseDouble(dynamic value,
          {double defaultValue = defaultDoubleValue}) =>
      parseDoubleNullable(value) ?? defaultValue;

  static bool parseBool(dynamic value,
          {bool defaultValue = defaultBoolValue}) =>
      parseBoolNullable(value) ?? defaultValue;

  static String parseString(dynamic value,
          {String defaultValue = defaultStringValue}) =>
      parseStringNullable(value) ?? defaultValue;

  static DateTime parseDate(dynamic value, {DateTime? defaultValue}) =>
      parseDateNullable(value) ?? defaultValue ?? DateTime.now();

  static int? parseIntNullable(dynamic value) {
    try {
      if (value is int) {
        return value;
      } else if (value == null) {
        return null;
      } else {
        try {
          return int.parse(value.toString());
        } catch (e) {
          return null;
        }
      }
    } catch (e) {
      return null;
    }
  }

  static Map<String, T>? parseMapNullable<String, T>(dynamic value) {
    try {
      if (value is Map<String, T>) {
        return value;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  static double? parseDoubleNullable(dynamic value) {
    try {
      if (value is double) {
        return value;
      } else if (value == null) {
        return null;
      } else {
        try {
          return double.parse(value.toString());
        } catch (e) {
          return null;
        }
      }
    } catch (e) {
      return null;
    }
  }

  static bool? parseBoolNullable(dynamic value) {
    try {
      if (value is bool) {
        return value;
      } else if (value == null) {
        return null;
      } else {
        try {
          return int.parse(value.toString()) > 0;
        } catch (e) {
          return null;
        }
      }
    } catch (e) {
      return null;
    }
  }

  static String? parseStringNullable(dynamic value) {
    try {
      if (value == null) {
        return null;
      } else {
        return value.toString();
      }
    } catch (e) {
      return null;
    }
  }

  /// 后端目前提供的日期数据为 UTC，<del>但没有提供正确的时区格式，Flutter 会将其解析为当前时区。
  /// 因此需要解析之后加上当前时区的偏移，以保证结果正确。</del>
  static DateTime? parseDateNullable(dynamic value) {
    String? dateString = parseStringNullable(value);
    if (dateString == null) {
      return null;
    }

    // return DateTime.tryParse(dateString)?.add(DateTime.now().timeZoneOffset);
    return DateTime.tryParse(dateString);
  }

  static List<T> parseList<T>(
          dynamic value, T? Function(dynamic) parseFunction) =>
      parseListNullable(value, parseFunction) ?? [];

  static List<T>? parseListNullable<T>(
      dynamic value, T? Function(dynamic) parseFunction) {
    try {
      if (value is! List) {
        return null;
      }

      final result = <T>[];
      for (var item in value) {
        try {
          final parsedItem = parseFunction.call(item);
          if (parsedItem != null) {
            result.add(parsedItem);
          }
        } catch (e) {
          // debugPrint('Error when parse \n$item\nin\n$value');
        }
      }
      return result;
    } catch (e) {
      return null;
    }
  }
}

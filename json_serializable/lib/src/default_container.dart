// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'lambda_result.dart';
import 'utils.dart';

/// Represents an expression that may be represented differently if there is
/// a default value available to replace it if `null`.
class DefaultContainer {
  final String expression;
  final String output;

  DefaultContainer(this.expression, this.output);

  static Object deserialize(
    Object value, {
    bool nullable = false,
    String? defaultValue,
  }) {
    if (value is DefaultContainer) {
      if (defaultValue != null || nullable) {
        return ifNullOrElse(
          value.expression,
          defaultValue ?? 'null',
          value.output,
        );
      }
      value = value.output;
    }

    if (value is LambdaResult && defaultValue != null) {
      return ifNullOrElse(value.expression, defaultValue, value.toString());
    }

    // metaforo 采用 jsonutil 处理所有的取值，如果原值是非 nullable 的，就不要构造默认值上去。
    // 非nullable 的分支在上面有处理，这里就不用重复加了。
    if (defaultValue != null) {
      if (nullable) {
        value = '$value ?? $defaultValue';
      } else {
        // do nothing.
      }
    }
    return value;
  }

  @override
  String toString() => deserialize(this).toString();
}

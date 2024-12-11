import 'dart:developer';

import 'package:flutter/foundation.dart';

dPrint(Object? value, {bool enableLog = false}) {
  if (kDebugMode) {
    if (enableLog) {
      log('$value');
      return;
    }
    print(value);
  }
}

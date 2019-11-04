import 'dart:async';

import 'package:flutter/services.dart';

class ReproCocoapodsIssue {
  static const MethodChannel _channel =
      const MethodChannel('repro_cocoapods_issue');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

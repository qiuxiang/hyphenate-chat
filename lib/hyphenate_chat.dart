
import 'dart:async';

import 'package:flutter/services.dart';

class HyphenateChat {
  static const MethodChannel _channel =
      const MethodChannel('hyphenate_chat');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

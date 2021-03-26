import 'dart:async';

import 'package:flutter/services.dart';

// ignore: avoid_classes_with_only_static_members
class HyphenateChat {
  static const MethodChannel channel = MethodChannel('hyphenate_chat');

  static Future<String> get platformVersion async {
    final String version = await channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

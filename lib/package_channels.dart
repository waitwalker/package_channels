import 'dart:async';

import 'package:flutter/services.dart';

class PackageChannels {
  static const MethodChannel _channel =
      const MethodChannel('package_channels');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

import 'dart:async';

import 'package:flutter/services.dart';

class VandanPlgin {
  static const MethodChannel _channel =
      const MethodChannel('vandan_plgin');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<Null> showtoast() async
  {
    await _channel.invokeMethod("showtoast");
    return null;
  }


}

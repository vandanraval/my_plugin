import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vandan_plgin/vandan_plgin.dart';

void main() {
  const MethodChannel channel = MethodChannel('vandan_plgin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await VandanPlgin.platformVersion, '42');
  });
}

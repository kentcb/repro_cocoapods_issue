import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:repro_cocoapods_issue/repro_cocoapods_issue.dart';

void main() {
  const MethodChannel channel = MethodChannel('repro_cocoapods_issue');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await ReproCocoapodsIssue.platformVersion, '42');
  });
}

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mdns_scout_platform_interface/src/method_channel_mdns_scout.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  const kPlatformName = 'platformName';

  group('$MethodChannelMdnsScout', () {
    late MethodChannelMdnsScout methodChannelMdnsScout;
    final log = <MethodCall>[];

    setUp(() async {
      methodChannelMdnsScout = MethodChannelMdnsScout();
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(
        methodChannelMdnsScout.methodChannel,
        (methodCall) async {
          log.add(methodCall);
          switch (methodCall.method) {
            case 'getPlatformName':
              return kPlatformName;
            default:
              return null;
          }
        },
      );
    });

    tearDown(log.clear);

    test('getPlatformName', () async {
      final platformName = await methodChannelMdnsScout.getPlatformName();
      expect(
        log,
        <Matcher>[isMethodCall('getPlatformName', arguments: null)],
      );
      expect(platformName, equals(kPlatformName));
    });
  });
}

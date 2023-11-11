import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mdns_scout_ios/mdns_scout_ios.dart';
import 'package:mdns_scout_platform_interface/mdns_scout_platform_interface.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('MdnsScoutIOS', () {
    const kPlatformName = 'iOS';
    late MdnsScoutIOS mdnsScout;
    late List<MethodCall> log;

    setUp(() async {
      mdnsScout = MdnsScoutIOS();

      log = <MethodCall>[];
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(mdnsScout.methodChannel, (methodCall) async {
        log.add(methodCall);
        switch (methodCall.method) {
          case 'getPlatformName':
            return kPlatformName;
          default:
            return null;
        }
      });
    });

    test('can be registered', () {
      MdnsScoutIOS.registerWith();
      expect(MdnsScoutPlatform.instance, isA<MdnsScoutIOS>());
    });

    test('getPlatformName returns correct name', () async {
      final name = await mdnsScout.getPlatformName();
      expect(
        log,
        <Matcher>[isMethodCall('getPlatformName', arguments: null)],
      );
      expect(name, equals(kPlatformName));
    });
  });
}

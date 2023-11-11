import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mdns_scout/mdns_scout.dart';
import 'package:mdns_scout_platform_interface/mdns_scout_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMdnsScoutPlatform extends Mock
    with MockPlatformInterfaceMixin
    implements MdnsScoutPlatform {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('MdnsScout', () {
    late MdnsScoutPlatform mdnsScoutPlatform;

    setUp(() {
      mdnsScoutPlatform = MockMdnsScoutPlatform();
      MdnsScoutPlatform.instance = mdnsScoutPlatform;
    });

    group('getPlatformName', () {
      test('returns correct name when platform implementation exists',
          () async {
        const platformName = '__test_platform__';
        when(
          () => mdnsScoutPlatform.getPlatformName(),
        ).thenAnswer((_) async => platformName);

        final actualPlatformName = await getPlatformName();
        expect(actualPlatformName, equals(platformName));
      });

      test('throws exception when platform implementation is missing',
          () async {
        when(
          () => mdnsScoutPlatform.getPlatformName(),
        ).thenAnswer((_) async => null);

        expect(getPlatformName, throwsException);
      });
    });
  });
}

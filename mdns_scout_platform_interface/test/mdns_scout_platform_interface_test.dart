import 'package:flutter_test/flutter_test.dart';
import 'package:mdns_scout_platform_interface/mdns_scout_platform_interface.dart';

class MdnsScoutMock extends MdnsScoutPlatform {
  static const mockPlatformName = 'Mock';

  @override
  Future<String?> getPlatformName() async => mockPlatformName;
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  group('MdnsScoutPlatformInterface', () {
    late MdnsScoutPlatform mdnsScoutPlatform;

    setUp(() {
      mdnsScoutPlatform = MdnsScoutMock();
      MdnsScoutPlatform.instance = mdnsScoutPlatform;
    });

    group('getPlatformName', () {
      test('returns correct name', () async {
        expect(
          await MdnsScoutPlatform.instance.getPlatformName(),
          equals(MdnsScoutMock.mockPlatformName),
        );
      });
    });
  });
}

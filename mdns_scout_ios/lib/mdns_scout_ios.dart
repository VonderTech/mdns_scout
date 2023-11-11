import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:mdns_scout_platform_interface/mdns_scout_platform_interface.dart';

/// The iOS implementation of [MdnsScoutPlatform].
class MdnsScoutIOS extends MdnsScoutPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('mdns_scout_ios');

  /// Registers this class as the default instance of [MdnsScoutPlatform]
  static void registerWith() {
    MdnsScoutPlatform.instance = MdnsScoutIOS();
  }

  @override
  Future<String?> getPlatformName() {
    return methodChannel.invokeMethod<String>('getPlatformName');
  }
}

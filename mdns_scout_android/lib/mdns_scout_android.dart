import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:mdns_scout_platform_interface/mdns_scout_platform_interface.dart';

/// The Android implementation of [MdnsScoutPlatform].
class MdnsScoutAndroid extends MdnsScoutPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('mdns_scout_android');

  /// Registers this class as the default instance of [MdnsScoutPlatform]
  static void registerWith() {
    MdnsScoutPlatform.instance = MdnsScoutAndroid();
  }

  @override
  Future<String?> getPlatformName() {
    return methodChannel.invokeMethod<String>('getPlatformName');
  }
}

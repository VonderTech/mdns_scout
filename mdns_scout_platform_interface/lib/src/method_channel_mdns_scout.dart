import 'package:flutter/foundation.dart' show visibleForTesting;
import 'package:flutter/services.dart';
import 'package:mdns_scout_platform_interface/mdns_scout_platform_interface.dart';

/// An implementation of [MdnsScoutPlatform] that uses method channels.
class MethodChannelMdnsScout extends MdnsScoutPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('mdns_scout');

  @override
  Future<String?> getPlatformName() {
    return methodChannel.invokeMethod<String>('getPlatformName');
  }
}

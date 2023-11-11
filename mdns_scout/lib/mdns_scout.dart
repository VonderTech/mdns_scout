import 'package:mdns_scout_platform_interface/mdns_scout_platform_interface.dart';

MdnsScoutPlatform get _platform => MdnsScoutPlatform.instance;

/// Returns the name of the current platform.
Future<String> getPlatformName() async {
  final platformName = await _platform.getPlatformName();
  if (platformName == null) throw Exception('Unable to get platform name.');
  return platformName;
}

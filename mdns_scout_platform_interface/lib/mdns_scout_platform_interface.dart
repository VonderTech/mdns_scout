import 'package:mdns_scout_platform_interface/src/method_channel_mdns_scout.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

/// The interface that implementations of mdns_scout must implement.
///
/// Platform implementations should extend this class
/// rather than implement it as `MdnsScout`.
/// Extending this class (using `extends`) ensures that the subclass will get
/// the default implementation, while platform implementations that `implements`
///  this interface will be broken by newly added [MdnsScoutPlatform] methods.
abstract class MdnsScoutPlatform extends PlatformInterface {
  /// Constructs a MdnsScoutPlatform.
  MdnsScoutPlatform() : super(token: _token);

  static final Object _token = Object();

  static MdnsScoutPlatform _instance = MethodChannelMdnsScout();

  /// The default instance of [MdnsScoutPlatform] to use.
  ///
  /// Defaults to [MethodChannelMdnsScout].
  static MdnsScoutPlatform get instance => _instance;

  /// Platform-specific plugins should set this with their own platform-specific
  /// class that extends [MdnsScoutPlatform] when they register themselves.
  static set instance(MdnsScoutPlatform instance) {
    PlatformInterface.verify(instance, _token);
    _instance = instance;
  }

  /// Return the current platform name.
  Future<String?> getPlatformName();
}

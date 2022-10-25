import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:plugin_using_protobuf/models/test_model_wrap.dart';

import 'plugin_using_protobuf_method_channel.dart';

abstract class PluginUsingProtobufPlatform extends PlatformInterface {
  /// Constructs a PluginUsingProtobufPlatform.
  PluginUsingProtobufPlatform() : super(token: _token);

  static final Object _token = Object();

  static PluginUsingProtobufPlatform _instance = MethodChannelPluginUsingProtobuf();

  /// The default instance of [PluginUsingProtobufPlatform] to use.
  ///
  /// Defaults to [MethodChannelPluginUsingProtobuf].
  static PluginUsingProtobufPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PluginUsingProtobufPlatform] when
  /// they register themselves.
  static set instance(PluginUsingProtobufPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<TestModelWrap?> getTestModel() async {
    throw UnimplementedError('getTestModel() has not been implemented.');
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:plugin_using_protobuf/models/test_model_wrap.dart';
import 'package:plugin_using_protobuf/protos/test_proto.pb.dart';

import 'plugin_using_protobuf_platform_interface.dart';

/// An implementation of [PluginUsingProtobufPlatform] that uses method channels.
class MethodChannelPluginUsingProtobuf extends PluginUsingProtobufPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('plugin_using_protobuf');

  @override
  Future<TestModelWrap?> getTestModel() async {
    final data = await methodChannel.invokeMethod("getTestModel");
    final objectData = data["data"];
    final proto = TestProto.fromBuffer(objectData);
    final testModelWrap = TestModelWrap.fromProto(proto);
    return testModelWrap;
  }
}

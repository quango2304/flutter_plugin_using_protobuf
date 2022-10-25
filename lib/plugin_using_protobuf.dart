
import 'package:plugin_using_protobuf/models/test_model_wrap.dart';

import 'plugin_using_protobuf_platform_interface.dart';

class PluginUsingProtobuf {
  Future<TestModelWrap?> getTestModel() async {
    return PluginUsingProtobufPlatform.instance.getTestModel();
  }
}

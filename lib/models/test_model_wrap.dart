import 'dart:typed_data';

import 'package:plugin_using_protobuf/models/utils/abstract_subscribe_model.dart';
import 'package:plugin_using_protobuf/protos/test_proto.pb.dart';

class TestModelWrap
    extends AbstractSubscribeModel<TestProto_Action, TestProto_Result> {
  TestModelWrap({required String eventChannelId, required String methodChannelId})
      : super(eventChannelId: eventChannelId, methodChannelId: methodChannelId);

  factory TestModelWrap.fromProto(TestProto proto) {
    return TestModelWrap(eventChannelId: proto.eventChannelId, methodChannelId: proto.methodChannelId);
  }

  @override
  TestProto_Result parseResult(Map<String, dynamic> data) {
    final protoData = data["data"] as Uint8List;
    return TestProto_Result.fromBuffer(protoData);
  }

  Future<void> finish() async {
    return await invokeMethod(TestProto_Action(finish: ""));
  }

  @override
  void handleData(TestProto_Result data) {
    switch(data.status) {
      case TestProto_Status.IN_PROGRESS:
        // TODO: Handle this case.
        break;
      case TestProto_Status.NOT_STARTED:
        // TODO: Handle this case.
        break;
      case TestProto_Status.SUCCESS:
        // TODO: Handle this case.
        break;
    }
  }
}

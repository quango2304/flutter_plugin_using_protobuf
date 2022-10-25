import 'dart:async';

import 'package:flutter/services.dart';
import 'package:protobuf/protobuf.dart' as pb;

abstract class AbstractActionModel<Action extends pb.GeneratedMessage> {
  late final String methodChannelId;
  late final methodChannel = MethodChannel(methodChannelId);

  AbstractActionModel({required this.methodChannelId});

  Future<T?> invokeMethod<T>(Action action) async {
    final result = await methodChannel.invokeMethod("action", {"data": action.writeToBuffer()});
    return result;
  }

  void dispose() {
    methodChannel.invokeMethod("dispose");
  }
}

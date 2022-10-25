import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plugin_using_protobuf/models/utils/abstract_action_model.dart';
import 'package:protobuf/protobuf.dart' as pb;
import 'package:rxdart/rxdart.dart';

abstract class AbstractSubscribeModel<Action extends pb.GeneratedMessage, Result extends pb.GeneratedMessage>
    extends AbstractActionModel<Action> {
  late String eventChannelId;
  EventChannel? _eventChannel;
  StreamSubscription? _eventStreamSubscription;
  var _isListening = false;
  int _numberOfListener = 0;
  final _resultStream = BehaviorSubject<Result>();

  Stream<Result> get observer {
    _numberOfListener++;
    _startListening(handleData);
    return _resultStream.asBroadcastStream(onCancel: (_) {
      _numberOfListener--;
      if (_numberOfListener == 0) {
        _stopListening();
      }
    });
  }

  AbstractSubscribeModel({required this.eventChannelId, required String methodChannelId})
      : super(methodChannelId: methodChannelId);

  void handleData(Result data);

  Result parseResult(Map<String, dynamic> data);

  //call when exit the screen, stop listening but still keep object for later use
  void _stopListening() {
    if (_isListening == false) return;
    _isListening = false;
    methodChannel.invokeMethod("stopListening");
  }

  void _startListening(Function(Result data) handleData) {
    if (_isListening == false && eventChannelId.isNotEmpty) {
      _eventChannel ??= EventChannel(eventChannelId);
      _eventStreamSubscription ??= _eventChannel?.receiveBroadcastStream().listen((data) {
        var result = parseResult(Map<String, dynamic>.from(data));
        _resultStream.add(result);
        handleData(result);
      });
      _isListening = true;
      methodChannel.invokeMethod("startListening");
    }
  }

  //only call when the object is no longer used
  @mustCallSuper
  @override
  void dispose() {
    super.dispose();
    _isListening = false;
    _eventStreamSubscription?.cancel();
    _eventStreamSubscription = null;
  }
}

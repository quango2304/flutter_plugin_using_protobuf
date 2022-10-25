package com.example.plugin_using_protobuf

import com.example.plugin_using_protobuf.utils.AbstractSubscribeModel
import com.quango.proto.plugin_using_protobuf.TestProtoOuterClass.*
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel

class TestModel(binaryMessenger: BinaryMessenger) :
        AbstractSubscribeModel<TestProto.Result, TestProto.Action>(binaryMessenger) {

    override fun buildAction(data: ByteArray): TestProto.Action {
        return TestProto.Action.parseFrom(data)
    }

    override fun handleAction(action: TestProto.Action, result: MethodChannel.Result) {
        when (action.actionCase) {
            TestProto.Action.ActionCase.FINISH -> {
                this.sink(TestProto.Result.newBuilder().setStatus(TestProto.Status.SUCCESS).build())
                result.success(null)
            }
            else -> {

            }
        }
    }

    override fun onStartListening() {

    }

    fun toProto(): TestProto {
        return TestProto.newBuilder().setEventChannelId(this.eventChannelId)
                .setMethodChannelId(this.methodChannelId).build()
    }

    override fun onStopListening() {
    }

}
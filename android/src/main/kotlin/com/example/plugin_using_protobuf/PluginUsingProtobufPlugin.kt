package com.example.plugin_using_protobuf

import androidx.annotation.NonNull
import com.quango.proto.plugin_using_protobuf.TestProtoOuterClass

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

class PluginUsingProtobufPlugin : FlutterPlugin, MethodCallHandler {
    private lateinit var channel: MethodChannel
    private lateinit var binaryMessenger: BinaryMessenger
    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, "plugin_using_protobuf")
        channel.setMethodCallHandler(this)
        this.binaryMessenger = flutterPluginBinding.binaryMessenger
    }

    override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
        if (call.method == "getTestModel") {
            val testModel = TestModel(this.binaryMessenger)
            result.success(
                    mapOf(
                            "data" to testModel.toProto().toByteArray()
                    )
            )
        } else {
            result.notImplemented()
        }
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }
}

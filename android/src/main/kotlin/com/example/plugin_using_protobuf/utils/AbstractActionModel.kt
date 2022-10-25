package com.example.plugin_using_protobuf.utils

import com.fossil.wear3_flutter_plugin.wear3_flutter_plugin.utils.ChannelUtil
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import java.util.*

abstract class AbstractActionModel<A>(
    val binaryMessenger: BinaryMessenger,
    val methodChannelId: String = UUID.randomUUID().toString()
) : MethodChannel.MethodCallHandler where A : com.google.protobuf.MessageLite {
    init {
        this.setup()
    }

    private lateinit var _methodChannel: MethodChannel


    abstract fun buildAction(data: ByteArray): A

    abstract fun handleAction(action: A, result: MethodChannel.Result)

    override fun onMethodCall(method: MethodCall, result: MethodChannel.Result) {
        if (method.method == "action") {
            val actionData = method.arguments as HashMap<*, *>
            val data = actionData["data"] as ByteArray
            val actionModel = this.buildAction(data)
            this.handleAction(actionModel, result)
        } else if (method.method == "dispose") {
            result.success(null)
            this.dispose()
        }
    }

    private fun setup() {
        this._methodChannel = ChannelUtil.INSTANCE.createMethodChannel(methodChannelId, binaryMessenger)
        this._methodChannel.setMethodCallHandler(this)
    }

    open fun dispose() {
        this._methodChannel.setMethodCallHandler(null)
    }
}
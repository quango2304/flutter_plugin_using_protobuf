package com.example.plugin_using_protobuf.utils
import android.os.Handler
import android.os.Looper
import android.util.Log
import com.fossil.wear3_flutter_plugin.wear3_flutter_plugin.utils.ChannelUtil
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import java.util.*

abstract class AbstractSubscribeModel<M, A>(
    val binaryMessenger: BinaryMessenger,
    val methodChannelId: String = UUID.randomUUID().toString(),
    val eventChannelId: String = UUID.randomUUID().toString(),
) : MethodChannel.MethodCallHandler,
    EventChannel.StreamHandler where M : com.google.protobuf.MessageLite, A : com.google.protobuf.MessageLite {
    init {
        this.setup()
    }

    private var isListening: Boolean = false

    private lateinit var _methodChannel: MethodChannel

    private lateinit var _eventChannel: EventChannel
    private var _eventSink: EventChannel.EventSink? = null

    abstract fun buildAction(data: ByteArray): A

    abstract fun handleAction(action: A, result: MethodChannel.Result)

    abstract fun onStartListening()

    abstract fun onStopListening()

    // method channel
    override fun onMethodCall(method: MethodCall, result: MethodChannel.Result) {
        // call action
        if (method.method == "action") {
            val actionData = method.arguments as HashMap<*, *>
            val data = actionData["data"] as ByteArray
            val actionModel = this.buildAction(data)
            this.handleAction(actionModel, result)
        } else if (method.method == "stopListening") {
            isListening = false
            this.onStopListening()
        } else if (method.method == "startListening") {
            if (!isListening) {
                this.onStartListening()
                isListening = true
            }
        } else if (method.method == "dispose") {
            result.success(null)
            this.dispose()
        }
    }

    //Event channel
    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        this._eventSink = events
    }

    override fun onCancel(arguments: Any?) {
        Log.d("Wear3", "[WEAR3] onDispose cancelEventChannel ${this.javaClass.name}")
        this._eventChannel.setStreamHandler(null)
        this._eventSink = null
        this.onStopListening();
        isListening = false
    }


    private fun setup() {
        Log.d("AbstractSubscribeModel", "Start setup ${this::class.java.name}")
        this._methodChannel = ChannelUtil.INSTANCE.createMethodChannel(methodChannelId, binaryMessenger)
        this._eventChannel = ChannelUtil.INSTANCE.createEventChannel(eventChannelId, binaryMessenger)
        this._methodChannel.setMethodCallHandler(this)
        this._eventChannel.setStreamHandler(this)
        Log.d("AbstractSubscribeModel", "End setup ${this::class.java.name}")
    }

    fun sink(message: M) {
        Handler(Looper.getMainLooper()).post {
            this._eventSink?.success(mapOf("data" to message.toByteArray()))
        }
    }

    open fun dispose() {
        this._methodChannel.setMethodCallHandler(null)
    }
}
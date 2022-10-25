package com.fossil.wear3_flutter_plugin.wear3_flutter_plugin.utils

import android.app.Activity
import android.util.Log
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodChannel

class ChannelUtil private constructor() {
    var activity: Activity? = null

    fun updateActivity(activity: Activity?) {
        this.activity = activity
    }

    fun createEventChannel(id: String, binaryMessenger: BinaryMessenger): EventChannel {
        Log.d("ChannelUtil", "createEventChannel $id")
        return EventChannel(binaryMessenger, id);
    }

    fun createMethodChannel(id: String, binaryMessenger: BinaryMessenger): MethodChannel {
        Log.d("ChannelUtil", "createMethodChannel $id")
        return MethodChannel(binaryMessenger, id);
    }

    companion object {
        val INSTANCE = ChannelUtil()
    }
}
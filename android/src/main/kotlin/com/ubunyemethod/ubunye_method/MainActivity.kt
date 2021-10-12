package com.ubunyemethod.ubunye_method

import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    private lateinit var methodCallHandler: NativeAudioHandler

    companion object {
        private const val CHANNEL = "com.ubunyemethod.ubunye_method"
    }

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        
        super.configureFlutterEngine(flutterEngine)
        
        val channel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL)
        methodCallHandler = NativeAudioHandler(applicationContext, channel)

        channel.setMethodCallHandler(methodCallHandler)
    }

}

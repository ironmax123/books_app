package com.pochipochi.book_app

import android.content.Context
import android.hardware.Sensor
import android.hardware.SensorEvent
import android.hardware.SensorEventListener
import android.hardware.SensorManager
import android.os.Bundle
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterFragmentActivity(), SensorEventListener {
    private var sensorManager: SensorManager? = null
    private var hingeAngleSensor: Sensor? = null
    private var currentAngle: Double = 0.0
    private var eventSink: EventChannel.EventSink? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        sensorManager = getSystemService(Context.SENSOR_SERVICE) as SensorManager
        // TYPE_HINGE_ANGLE は Android API 30 以上で利用可能です
        hingeAngleSensor = sensorManager?.getDefaultSensor(Sensor.TYPE_HINGE_ANGLE)
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        // ストリーム用 (EventChannel)
        EventChannel(flutterEngine.dartExecutor.binaryMessenger, "app/angle").setStreamHandler(
            object : EventChannel.StreamHandler {
                override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
                    eventSink = events
                    // 接続時に現在の値を一度送る
                    eventSink?.success(currentAngle)
                }

                override fun onCancel(arguments: Any?) {
                    eventSink = null
                }
            }
        )
    }

    override fun onResume() {
        super.onResume()
        hingeAngleSensor?.let {
            sensorManager?.registerListener(this, it, SensorManager.SENSOR_DELAY_NORMAL)
        }
    }

    override fun onPause() {
        super.onPause()
        sensorManager?.unregisterListener(this)
    }

    override fun onSensorChanged(event: SensorEvent) {
        if (event.sensor.type == Sensor.TYPE_HINGE_ANGLE) {
            currentAngle = event.values[0].toDouble()
            eventSink?.success(currentAngle)
        }
    }

    override fun onAccuracyChanged(sensor: Sensor?, accuracy: Int) {}
}

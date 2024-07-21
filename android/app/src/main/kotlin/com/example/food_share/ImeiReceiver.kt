import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import io.flutter.Log

class ImeiReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context?, intent: Intent?) {
        Log.d("ImeiReceiver", "Broadcast received")
        if (context == null) {
            Log.e("ImeiReceiver", "Context is null")
            return
        }
        if (intent == null) {
            Log.e("ImeiReceiver", "Intent is null")
            return
        }

        val imei = intent.getStringExtra(IMEI_KEY) ?: run {
            Log.e("ImeiReceiver", "IMEI not found in intent")
            return
        }
        val deviceName = intent.getStringExtra(DEVICE_NAME_KEY) ?: run {
            Log.e("ImeiReceiver", "Device Name not found in intent")
            return
        }

        Log.d("ImeiReceiver", "IMEI: $imei, Device Name: $deviceName")
//        AppSettings.setValue(context, IMEI_KEY, imei)
//        AppSettings.setValue(context, DEVICE_NAME_KEY, deviceName)
//
//        Toast.makeText(context, "Received: IMEI: $imei - DeviceName: $deviceName", Toast.LENGTH_LONG).show()
    }

    companion object {
        const val IMEI_KEY = "imei"
        const val DEVICE_NAME_KEY = "devicename"
    }
}
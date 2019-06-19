package com.jairemix.capacitor.notificationpermission;

import com.getcapacitor.JSObject;
import com.getcapacitor.NativePlugin;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;

import android.support.v4.app.NotificationManagerCompat;

import android.content.Context;
import android.util.Log;

@NativePlugin()
public class NotificationPermissionPlugin extends Plugin {

    private static final String PLUGIN_TAG = "NotificationPermission";
    
    @PluginMethod()
    public void registerPermission(PluginCall call) {

        Log.d(PLUGIN_TAG, "registerPermission()");
        NotificationManagerCompat notificationManager = NotificationManagerCompat.from(this.getContext());
        boolean granted = notificationManager.areNotificationsEnabled();

        call.success(new JSObject().put("granted", granted));
    }

}

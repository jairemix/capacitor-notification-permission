declare module '@capacitor/core' {
    interface PluginRegistry {
        NotificationPermissionPlugin: NotificationPermissionPlugin;
    }
}
export interface NotificationPermissionPlugin {
    /**
     * iOS only.
     */
    getIOSSettings?(): Promise<{
        "notificationCenter": number;
        "lockScreen": number;
        "badge": number;
        "banners": number;
        "alertStyle": number;
    }>;
    /**
     * on iOS: requests permission from user (if not requested previously) and returns whether it was granted.
     * on Android: just returns whether permission is enabled. permissions are turned on by default until the user disables them in settings.
     */
    checkPermission(): Promise<{
        granted: boolean;
    }>;
}

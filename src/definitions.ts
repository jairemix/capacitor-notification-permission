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
    "notificationCenter": number,
    "lockScreen": number,
    "badge": number,
    "banners": number,
    "alertStyle": number,
  }>;
  /**
   * on iOS: registers for permission (if not already registered) and returns whether it was granted
   * on Android: just returns whether permission is granted. permissions are turned on by default
   */
  registerPermission(): Promise<{ granted: boolean }>;
}

import Foundation
import Capacitor
import UserNotifications

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitor.ionicframework.com/docs/plugins/ios
 */
@objc(NotificationPermissionPlugin)
public class NotificationPermissionPlugin: CAPPlugin {

    @objc func getIOSSettings(_ call: CAPPluginCall) {
      let center = UNUserNotificationCenter.current();
      center.getNotificationSettings(completionHandler: { (settings: UNNotificationSettings) in
        call.success([
          "notificationCenter": settings.notificationCenterSetting.rawValue,
          "lockScreen": settings.lockScreenSetting.rawValue,
          "badge": settings.badgeSetting.rawValue,
          "banners": settings.soundSetting.rawValue,
          "alertStyle": settings.alertStyle.rawValue
        ]);
      });
    }
    
    @objc func registerPermission(_ call: CAPPluginCall) {
      let center = UNUserNotificationCenter.current();
      center.requestAuthorization(options:[.badge, .alert, .sound], completionHandler: { (granted: Bool, error) in
        // Enable or disable features based on authorization.
        if (error == nil) {
          call.success([ "granted": granted ]);
        } else {
          call.error(error.debugDescription);
        }
      });
    }
    
}

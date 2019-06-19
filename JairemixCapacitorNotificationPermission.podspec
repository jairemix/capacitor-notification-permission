
  Pod::Spec.new do |s|
    s.name = 'JairemixCapacitorNotificationPermission'
    s.version = '0.0.4'
    s.summary = 'Capacitor wrapper plugin for Segment SDK'
    s.license = 'MIT'
    s.homepage = 'https://github.com/jairemix/capacitor-notification-permission'
    s.author = 'Jeremy Li'
    s.source = { :git => 'https://github.com/jairemix/capacitor-notification-permission', :tag => s.version.to_s }
    s.source_files = 'ios/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
    s.ios.deployment_target  = '11.0'
    s.dependency 'Capacitor'
  end
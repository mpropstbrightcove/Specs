Pod::Spec.new do |s|
  s.name      = 'VMNNotifications-iOS-SDK'
  s.version   = '1.0'
  s.platform  = :ios
  s.summary   = 'VMN Notifications SDK for iOS'
  s.homepage  = ''
  s.license   = ''
  s.author    = { 'Viacom Media Networks' => 'isaac.dasilva@viacom.com' }
  s.source    = { :git => 'https://github.com/mtvn-player/VMNNotifications-iOS.git', :tag => 'v.1.0' }
  s.requires_arc = false
  s.source_files  = 'Classes/*.{h,m}'
end
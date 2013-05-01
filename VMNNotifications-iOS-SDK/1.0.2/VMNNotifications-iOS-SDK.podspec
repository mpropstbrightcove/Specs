Pod::Spec.new do |s|
  s.name      = 'VMNNotifications-iOS-SDK'
  s.version   = '1.0.2'
  s.platform  = :ios
  s.summary   = 'VMN Notifications SDK for iOS'
  s.homepage  = ''
  s.license   = ''
  s.author    = { 'Viacom Media Networks' => 'isaac.dasilva@viacom.com' }
  s.source    = { :git => 'https://github.com/mtvn-player/VMNNotifications-iOS.git', :tag => 'v1.0.2' }
  s.requires_arc = false
  s.libraries = 'xml2'
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(SDKROOT)/usr/include/libxml2"', 'HEADER_SEARCH_PATHS' => '"$(SDKROOT)/usr/include/libxml2", "$(PODS_ROOT)/VMNNotifications-iOS-SDK"/**' }
  s.source_files  = 'Classes/**'
end
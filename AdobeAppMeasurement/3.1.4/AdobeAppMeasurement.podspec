Pod::Spec.new do |s|
  s.name      = 'AdobeAppMeasurement'
  s.version   = '3.1.4'
  s.platform  = :ios
  s.summary   = 'AdobeAppMeasurement for iOS'
  s.homepage  = ''
  s.license   = ''
  s.author    = { 'Viacom' =>  'http://developer.viacom.com' }             
  s.source    = { :git => 'https://github.com/mtvn-player/AdobeAppMeasurementSDK-iOS.git', :tag => '3.1.4' }
  s.requires_arc = false
  s.preserve_paths = 'admsAppLibrary.a'
  s.library = 'admsAppLibrary', 'z'
  s.ios.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/ AdobeAppMeasurement/"' }
  s.source_files  = '*.{h,m}'
end
Pod::Spec.new do |s|
  s.name      = 'NielsenID3Meter-iOS-SDK'
  s.version   = '2.0.26a'
  s.platform  = :ios
  s.summary   = 'Nielsen ID3 Meter SDK for iOS'
  s.homepage  = ''
  s.license   = ''
  s.author    = { 'Viacom' =>  'http://developer.viacom.com' }
  s.source    = { :git => 'https://github.com/mtvn-player/NielsenID3Meter-iOS-SDK.git', :tag => '2.0.26a' }
  s.requires_arc   = false
  s.source_files  = 'FrameworkSource/**'
  s.xcconfig   = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/NielsenID3Meter-iOS-SDK/FrameworkSource"/**', 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/NielsenID3Meter-iOS-SDK/FrameworkSource"/**', 'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/NielsenID3Meter-iOS-SDK/FrameworkSource/NielsenID3Meter.framework/Headers"/**', 'OTHER_LDFLAGS' => '-force_load "$(PODS_ROOT)/NielsenID3Meter-iOS-SDK/FrameworkSource/NielsenID3Meter.framework/NielsenID3Meter"' }
  s.frameworks = 'Security', 'SystemConfiguration'
end

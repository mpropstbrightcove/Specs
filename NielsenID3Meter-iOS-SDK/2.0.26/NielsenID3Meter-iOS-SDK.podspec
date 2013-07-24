Pod::Spec.new do |s|
  s.name      = 'NielsenID3Meter-iOS-SDK'
  s.version   = '2.0.26'
  s.platform  = :ios
  s.summary   = 'Nielsen ID3 Meter SDK for iOS'
  s.homepage  = ''
  s.license   = ''
  s.author    = { 'Viacom' =>  'http://developer.viacom.com' }             
  s.source    = { :git => 'https://github.com/mtvn-player/NielsenID3Meter-iOS-SDK.git', :tag => '2.0.26' }
  s.requires_arc = false
  s.preserve_paths = 'NielsenID3Meter.framework'
  s.library = 'NielsenID3Meter', 'z'
  s.ios.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/NielsenID3Meter-iOS-SDK/NielsenID3Meter.framework/"' }
  s.source_files  = 'Headers/*.{h,m}'
  s.frameworks   = 'Security', 'SystemConfiguration'
end

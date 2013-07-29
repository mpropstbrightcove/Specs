Pod::Spec.new do |s|
  s.name      = 'NielsenID3Meter-iOS-SDK'
  s.version   = '2.0.27'
  s.platform  = :ios
  s.summary   = 'Nielsen ID3 Meter SDK for iOS'
  s.homepage  = ''
  s.license   = ''
  s.author    = { 'Viacom' =>  'http://developer.viacom.com' }
  s.source    = { :git => 'https://github.com/mtvn-player/NielsenID3Meter-iOS-SDK.git', :tag => "#{s.version}" }
  framework_path = 'FrameworkSource/NielsenID3Meter.framework'
  s.source_files  = "#{framework_path}/Versions/A/Headers/*.h"
  s.frameworks = 'NielsenID3Meter', 'Security', 'SystemConfiguration'
  s.preserve_paths = framework_path
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/NielsenID3Meter-iOS-SDK/FrameworkSource"' }
end

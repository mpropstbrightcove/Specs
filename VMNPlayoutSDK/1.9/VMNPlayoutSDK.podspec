Pod::Spec.new do |s|
  s.name      = 'VMNPlayoutSDK'
  s.version   = '1.9'
  s.platform  = :ios
  s.summary   = "The VMNPlayout SDK for iOS"
  s.homepage  = ''
  s.license   = ''
  s.author    = { 'Viacom' =>  '' }             
  s.source    = { :git => 'https://github.com/mtvn-player/VMNPlayoutSDK-iOS.git', 
                  :tag => "#{s.version}" }
  
  s.platform = :ios, '5.0'
  framework_path = 'FrameworkSource/VMNPlayoutSDK.framework'
  s.source_files  = "#{framework_path}/Versions/A/Headers/*.h"
  s.requires_arc = false
  s.public_header_files = "#{framework_path}/Headers/VMNPlayoutSDK.h"
  s.preserve_paths = framework_path
  s.frameworks = "VMNPlayoutSDK"
  #s.header_dir = 'VMNPlayoutSDK'
  #s.ios.preserve_paths = 'FrameworkSource/VMNPlayoutSDK.framework'
  #s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/VMNPlayout-iOS-SDK/FrameworkSource/VMNPlayoutSDK"', 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/VMNPlayout-iOS-SDK/FrameworkSource"/**', 'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/VMNPlayout-iOS-SDK/FrameworkSource/VMNPlayoutSDK.framework/Headers"/**', 'OTHER_LDFLAGS' => '-ObjC' }
  s.xcconfig = { "FRAMEWORK_SEARCH_PATHS" => '"$(PODS_ROOT)/VMNPlayoutSDK/FrameworkSource"' }
  s.dependency 'SBJson', '~> 3.2'
end
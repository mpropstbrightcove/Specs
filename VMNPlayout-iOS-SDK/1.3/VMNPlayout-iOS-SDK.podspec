Pod::Spec.new do |s|
  s.name      = 'VMNPlayout-iOS-SDK'
  s.version   = '1.3.3'
  s.platform  = :ios
  s.summary   = "The VMNPlayout SDK for iOS"
  s.homepage  = ''
  s.license   = ''
  s.author    = { 'Viacom' =>  'http://developer.viacom.com/mdp_download/vmnplayout-sdk-ios/' }             
  s.source    = { :git => 'https://github.com/mtvn-player/VMNPlayoutSDK-iOS.git', :tag => '1.3' }
  s.requires_arc = false
  s.source_files  = 'FrameworkSource/**'
  s.preserve_paths = 'VMNPlayoutSDK.framework'
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/VMNPlayout-iOS-SDK/FrameworkSource"/**', 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/VMNPlayout-iOS-SDK/FrameworkSource"/**', 'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/VMNPlayout-iOS-SDK/FrameworkSource/VMNPlayoutSDK.framework/Headers"/**', 'OTHER_LDFLAGS' => '-force_load "$(PODS_ROOT)/VMNPlayout-iOS-SDK/FrameworkSource/VMNPlayoutSDK.framework/VMNPlayoutSDK"' }
  s.frameworks   = 'UIKit', 'Foundation', 'AVFoundation'
end

Pod::Spec.new do |s|
  s.name  = 'TVPlus'
  s.version = '2.0.9'
  s.platform = :ios
  s.summary = 'TVPlus'
  s.author = { 'TVPlus' => 'support@tvplus.com' }
  s.homepage = 'http://developers.tvplus.com/API'
  s.license = 'COMMERCIAL'
  s.preserve_paths = 'TVplusSDK.framework'
  s.source = { :git => 'https://github.com/mtvn-player/TVPlusSDK-iOS.git', :tag => "#{s.version}" }  
  s.xcconfig     = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libz', 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/TVPlus/"' }
  s.frameworks = 'AudioToolbox', 'AVFoundation', 'CFNetwork', 'CoreAudio', 'CoreGraphics', 'Foundation', 'MobileCoreServices', 'SystemConfiguration', 'UIKit'
  s.libraries = 'z'
  s.ios.vendored_frameworks = 'TVplusSDK.framework'
end

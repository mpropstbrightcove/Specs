Pod::Spec.new do |s|
  s.name      = 'VMNVideoPlayer-iOS-SDK'
  s.version   = '1.2.31'
  s.platform  = :ios
  s.summary   = "The VMNVideoPlayer SDK for iOS."
  s.homepage  = ''
  s.license   = ''
  s.author    = { 'Brigthcove' =>  '' }             
  s.source    = { :git => 'https://github.com/mtvn-player/VMNVideoPlayer-iOS.git', :tag => "#{s.version}" }
  s.requires_arc = false
  s.subspec 'Brightcove' do |br|
    br.source_files = 'FrameworkSource/BrightcoveiOSSDK/*.{h,a}'
    br.library = 'BCiOSSDK'
    br.xcconfig = { 'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/VMNVideoPlayer-iOS-SDK/FrameworkSource/BrightcoveiOSSDK"/**', 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/VMNVideoPlayer-iOS-SDK/FrameworkSource/BrightcoveiOSSDK"/**'  }
    br.frameworks = 'CoreMedia', 'AVFoundation'
  end
  s.subspec 'VMNVideoPlayer' do |vmnplayer|
    framework_path = 'FrameworkSource/libVMNVideoPlayeriOSSDK/VMNVideoPlayer.framework'
    vmnplayer.source_files = "#{framework_path}/Headers/*.h"
    vmnplayer.resources = 'FrameworkSource/libVMNVideoPlayeriOSSDK/VMNVideoPlayer.bundle'
    vmnplayer.preserve_paths = framework_path
    vmnplayer.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/VMNVideoPlayer-iOS-SDK/FrameworkSource/libVMNVideoPlayeriOSSDK"'}
    vmnplayer.frameworks = 'CoreText', 'VMNVideoPlayer'
  end
  s.subspec 'FreeWheel' do |free|
    framework_path = 'FrameworkSource/BCFreeWheel/AdManager.framework'
    free.source_files = "#{framework_path}/Headers/*.h"
    free.library = 'xml2'
    free.preserve_paths = framework_path
    free.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/VMNVideoPlayer-iOS-SDK/FrameworkSource/BCFreeWheel"', 'OTHER_LDFLAGS' => '-ObjC'}
    free.frameworks = 'UIKit', 'CoreGraphics', 'QuartzCore', 'MediaPlayer', 'CoreLocation', 'EventKit', 'AdManager'
  end
  s.subspec 'FreeWheelBrightcove' do |freebright|
    freebright.source_files = 'FrameworkSource/BCFreeWheel/*.{h,a}'
    freebright.dependency 'VMNVideoPlayer-iOS-SDK/FreeWheel'
    freebright.library = 'BCFreeWheelPlugin'
    freebright.xcconfig = { 'HEADER_SEARCH_PATHS' => '"$(SRCROOT)/Pods/VMNVideoPlayer-iOS-SDK/FrameworkSource/BCFreeWheel"/**', 'LIBRARY_SEARCH_PATHS' => '"$(SRCROOT)/Pods/VMNVideoPlayer-iOS-SDK/FrameworkSource/BCFreeWheel"/**' }
  end
  s.subspec 'Omniture' do |omn|
    files = FileList['FrameworkSource/BCOmniture/*.{h,a}']
      omn.source_files = files
    omn.library = 'AppMeasurement', 'BCOmniturePlugin'
    omn.xcconfig = { 'HEADER_SEARCH_PATHS' => '"$(SRCROOT)/Pods/VMNVideoPlayer-iOS-SDK/FrameworkSource/BCOmniture"/**', 'LIBRARY_SEARCH_PATHS' => '"$(SRCROOT)/Pods/VMNVideoPlayer-iOS-SDK/FrameworkSource/BCOmniture"/**' }
    omn.frameworks = 'CoreMedia', 'AVFoundation'
  end
  s.subspec 'Akamai' do |aka|
    aka.source_files = 'FrameworkSource/AkamMAlibs/headers/*.{h}', 'FrameworkSource/AkamMAlibs/libs/**/*.{a}' 
    aka.library = 'AKAMMediaExtensions'
    aka.xcconfig = { 'HEADER_SEARCH_PATHS' => '"$(SRCROOT)/Pods/VMNVideoPlayer-iOS-SDK/FrameworkSource/AkamMAlibs/headers"/**', 'LIBRARY_SEARCH_PATHS' => '"$(SRCROOT)/Pods/VMNVideoPlayer-iOS-SDK/FrameworkSource/AkamMAlibs/libs/$(CONFIGURATION)$(EFFECTIVE_PLATFORM_NAME)" "$(SRCROOT)/Pods/VMNVideoPlayer-iOS-SDK/FrameworkSource/AkamMAlibs/libs/Debug-iphoneos"/**', 'OTHER_LDFLAGS' => '-lAKAMMediaExtensions' }
    aka.frameworks = 'CoreMedia', 'AVFoundation'
  end
    s.xcconfig = { 'HEADER_SEARCH_PATHS' => '"$(SDKROOT)/usr/include/libxml2"', 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/VMNVideoPlayer-iOS-SDK/FrameworkSource/libVMNVideoPlayeriOSSDK"/**'}
    s.library = 'xml2'
    s.frameworks   = 'MessageUI', 'SystemConfiguration', 'CoreText', 'CoreLocation', 'QuartzCore', 'MediaPlayer', 'CoreMedia', 'AVFoundation', 'UIKit', 'Foundation', 'CoreGraphics'
end
Pod::Spec.new do |s|
  s.name      = 'VMNVideoPlayer-iOS-SDK'
  s.version   = '1.2.8'
  s.platform  = :ios
  s.summary   = "The VMNVideoPlayer SDK for iOS."
  s.homepage  = ''
  s.license   = ''
  s.author    = { 'Brigthcove' =>  '' }             
  s.source    = { :git => 'https://github.com/mtvn-player/VMNVideoPlayer-iOS.git', :tag => 'v1.2.8' }
  s.requires_arc = false
  s.subspec 'Brightcove' do |br|
    br.source_files = 'FrameworkSource/BrightcoveiOSSDK/*.{h,a}'
	br.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SRCROOT)/Pods/VMNVideoPlayer-iOS-SDK/FrameworkSource/BrightcoveiOSSDK', 'LIBRARY_SEARCH_PATHS' => '$(SRCROOT)/Pods/**' }
	br.frameworks = 'CoreMedia', 'AVFoundation'
  end
  s.subspec 'VMNPlayer' do |vmnplayer|
    vmnplayer.source_files = 'FrameworkSource/libVMNVideoPlayeriOSSDK/VMNVideoPlayer.framework/**'
	vmnplayer.resources = 'FrameworkSource/libVMNVideoPlayeriOSSDK/VMNVideoPlayer.bundle'
	vmnplayer.frameworks = 'CoreText'
  end
  s.subspec 'FreeWheel' do |free|
    free.source_files = 'FrameworkSource/BCFreeWheel/AdManager.framework/**'
	free.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2 $(SRCROOT)/Pods/VMNVideoPlayer-iOS-SDK/FrameworkSource/BCFreeWheel', 'LIBRARY_SEARCH_PATHS' => '$(SRCROOT)/Pods/**', 'OTHER_LDFLAGS' => '-ObjC' }
	free.frameworks = 'UIKit', 'CoreGraphics', 'QuartzCore', 'MediaPlayer', 'CoreLocation'
  end
  s.subspec 'FreeWheelBrightcove' do |freebright|
    freebright.source_files = 'FrameworkSource/BCFreeWheel/*.{h,a}'
	freebright.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SRCROOT)/Pods/VMNVideoPlayer-iOS-SDK/FrameworkSource/BCFreeWheel', 'LIBRARY_SEARCH_PATHS' => '$(SRCROOT)/Pods/**' }
  end
  s.subspec 'Omniture' do |omn|
	files = FileList['FrameworkSource/BCOmniture/*.{h,a}']
    omn.source_files = files
	omn.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SRCROOT)/Pods/VMNVideoPlayer-iOS-SDK/FrameworkSource/BCOmniture', 'LIBRARY_SEARCH_PATHS' => '$(SRCROOT)/Pods/**' }
	omn.frameworks = 'CoreMedia', 'AVFoundation'
  end
  s.subspec 'Akamai' do |aka|
    aka.source_files = 'FrameworkSource/AkamMAlibs/headers/*.{h}', 'FrameworkSource/AkamMAlibs/libs/**/*.{a}' 
	aka.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '$(SRCROOT)/Pods/** $(SRCROOT)/Pods/VMNVideoPlayer-iOS-SDK/FrameworkSource/AkamMAlibs/libs/$(CONFIGURATION)$(EFFECTIVE_PLATFORM_NAME) $(SRCROOT)/Pods/VMNVideoPlayer-iOS-SDK/FrameworkSource/AkamMAlibs/libs/Debug-iphoneos', 'OTHER_LDFLAGS' => '-lAKAMMediaExtensions' }
	aka.frameworks = 'CoreMedia', 'AVFoundation'
  end
end

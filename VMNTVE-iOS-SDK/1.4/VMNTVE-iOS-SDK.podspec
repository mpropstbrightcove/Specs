Pod::Spec.new do |s|
  s.name         = 'VMNTVE-iOS-SDK'
  s.version      = '1.4'
  s.license      = ''
  s.platform     = :ios
  s.summary      = 'TVE Authentication Component for Native iOS represents a library for iOS devices. This is solution for TV Everywhere offers cross-domain single-sign-on authentication and authorization.'
  s.homepage     = 'https://github.com/mtvn-player/VMNCST-iOS.git'
  s.author       = { 'Viacom Media Networks' => 'isaac.dasilva@viacom.com' }
  s.source       = { :git => 'https://github.com/mtvn-player/VMNTVE-iOS.git', :tag => 'v1.4' }
  
  s.requires_arc = true
  s.preserve_paths = 'FrameworkSource/lib/libTVEAuthComponent-iOS.a'
  s.resources = 'FrameworkSource/**/*.{png,js,html,plist,bundle}'
  s.library = 'libTVEAuthComponent-iOS', 'z'
  s.ios.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/VMNTVE-iOS-SDK/FrameworkSource"' }
  s.source_files  = 'FrameworkSource/**/*.{h,m}'

end

Pod::Spec.new do |s|
  s.name      = 'Comscore-iOS-SDK'
  s.version   = '2.1307.04'
  s.platform  = :ios
  s.summary   = 'Comscore SDK for iOS'
  s.homepage  = ''
  s.license   = ''
  s.author    = { 'Viacom' =>  'http://developer.viacom.com' }             
  s.source    = { :git => 'https://github.com/mtvn-player/Comscore-iOS-SDK.git', :tag => '2.1307.04' }
  s.requires_arc = false
  s.preserve_paths = 'libcomScore.a'
  s.library = 'libcomScore', 'z'
  s.ios.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/Comscore-iOS-SDK/"' }
  s.source_files  = '*.{h,m}'
  s.frameworks   = 'Security', 'SystemConfiguration'
end

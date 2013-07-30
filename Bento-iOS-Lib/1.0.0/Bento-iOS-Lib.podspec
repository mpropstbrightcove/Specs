Pod::Spec.new do |s|
  s.name      = 'Bento-iOS-Lib'
  s.version   = '1.0.0'
  s.platform  = :ios
  s.summary   = 'Bento iOS Library'
  s.homepage  = ''
  s.license   = ''
  s.author    = { 'Viacom' =>  'http://developer.viacom.com' }             
  s.source    = { :git => 'https://github.com/mtvn-player/Bento-iOS-Lib.git', :tag => "#{s.version}" }
  s.requires_arc = false
  s.preserve_paths = 'libBentoLib.a'
  s.library = 'libBentoLib', 'z'
  s.ios.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/Bento-iOS-Lib/"' }
  s.source_files  = 'Products/Release-iphoneos/include/BentoLib/*.{h,m}'
  s.frameworks    = 'Foundation', 'Security', 'SystemConfiguration'
end

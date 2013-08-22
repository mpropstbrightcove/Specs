Pod::Spec.new do |s|
  s.name      = 'VMNAD-iOS-SDK'
  s.version   = '1.0'
  s.platform  = :ios
  s.summary   = 'VMN AD SDK for iOS'
  s.homepage  = 'http://developer.viacom.com/mdp_download/mraid-sdk-2/'
  s.license   = ''
  s.author    = { 'Viacom' =>  'http://developer.viacom.com/mdp_download/mraid-sdk-2/' }             
  s.source    = { :git => 'https://github.com/mtvn-player/VMNMRAIDSDK-iOS.git', :tag => 'release' }
  s.requires_arc = true
  s.preserve_paths = 'Framework/libViacomMRAID.a'
  s.resources = 'Framework/*.{png,js,html}'
  s.library = 'ViacomMRAID', 'z'
  s.ios.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/VMNAD-iOS-SDK/Framework"' }
  s.source_files  = 'Framework/*.{h,m}'
end
Pod::Spec.new do |s|
  s.name      = 'VMNMRAID-iOS-SDK'
  s.version   = '1.0'
  s.platform  = :ios
  s.summary   = 'MRAID SDK for iOS'
  s.homepage  = 'http://developer.viacom.com/mdp_download/mraid-sdk-2/'
  s.license   = ''
  s.author    = { 'Viacom' =>  'http://developer.viacom.com/mdp_download/mraid-sdk-2/' }             
  s.source    = { :svn => 'https://subversion.1515.mtvi.com/mobileapps/ipad/BTGTestHarness/trunk/xcode/ViacomMRAIDv1.1.0/' }
  s.requires_arc = true
  s.preserve_paths = 'libViacomMRAID.a'
  s.resources = '*.{png,js,html}'
  s.library = 'ViacomMRAID', 'z'
  s.ios.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/VMNMRAID-iOS-SDK/"' }
  s.source_files  = '*.{h,m}'
end

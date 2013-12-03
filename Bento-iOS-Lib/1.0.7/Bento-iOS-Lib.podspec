Pod::Spec.new do |s|
  s.name      = 'Bento-iOS-Lib'
  s.version   = '1.0.7'
  s.platform  = :ios
  s.summary   = 'Bento iOS Library'
  s.homepage  = ''
  s.license   = ''
  s.author    = { 'Viacom' =>  'http://developer.viacom.com' }             
  s.source    = { :git => 'https://github.com/mtvn-player/Bento-iOS-Lib.git', :tag => "#{s.version}" }
  s.requires_arc = false
  s.ios.xcconfig = {
	'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/Bento-iOS-Lib/BentoLib"'
	}
  s.source_files  = 'BentoLib/*.{h,m}'
  s.frameworks = 'Foundation', 'Security', 'SystemConfiguration'
  s.dependency 'AdobeAppMeasurement', '3.3.0'
  s.dependency 'Comscore-iOS-SDK', '2.1309.19'
  s.dependency 'NielsenID3Meter-iOS-SDK', '2.0.27'
  s.dependency 'VMN-iOS-Ad-Component', '1.0'
end

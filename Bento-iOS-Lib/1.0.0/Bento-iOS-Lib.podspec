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
  s.ios.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/Bento-iOS-Lib/BentoLib"' }
  s.source_files  = 'BentoLib/*.{h,m}'
  s.frameworks = 'Foundation', 'Security', 'SystemConfiguration'
  s.dependency 'AdobeAppMeasurement', '3.1.4'
  s.dependency 'Comscore-iOS-SDK', '2.1307.04'
  s.dependency 'NielsenID3Meter-iOS-SDK', '2.0.27'
end

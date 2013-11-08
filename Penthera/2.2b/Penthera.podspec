Pod::Spec.new do |s|
  s.name      = 'Penthera'
  s.version   = '2.2b'
  s.platform  = :ios
  s.summary   = 'Penthera SDK for iOS'
  s.homepage  = ''
  s.license   = ''
  s.author    = { 'Viacom' =>  'http://developer.viacom.com' }
  s.source    = { :git => 'https://github.com/mtvn-player/penthera-sdk-ios', :tag => "#{s.version}" 
  }
  s.preserve_paths = 'VirtuosoClientDownloadEngine-Debug.a'
  s.source_files  = '*.{h,m}'
  s.frameworks = 'MediaPlayer', 'CFNetwork', 'Security', 'AudioToolbox', 'AVFoundation', 'SystemConfiguration', 'AssetsLibrary', 'CoreTelephony'
end

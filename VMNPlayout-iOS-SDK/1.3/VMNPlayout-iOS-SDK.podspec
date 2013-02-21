Pod::Spec.new do |s|
  s.name      = 'VMNPlayout-iOS-SDK'
  s.version   = '1.3'
  s.platform  = :ios
  s.summary   = "The VMNPlayout SDK for iOS"
  s.homepage  = 'http://developer.viacom.com/mdp_download/vmnplayout-sdk-ios/'
  s.license   = ''
  s.author    = { 'Viacom' =>  'http://developer.viacom.com/mdp_download/vmnplayout-sdk-ios/' }             
  s.source    = { :git => 'https://github.com/mtvn-player/VMNPlayoutSDK-iOS.git', :tag => '1.3' }
  s.source_files  = 'FrameworkSource'
  s.requires_arc = false
  s.frameworks   = 'UIKit', 'Foundation', 'AVFoundation'
end

Pod::Spec.new do |s|
  s.name      = 'VMN-iOS-Ad-Component'
  s.version   = '1.0.3'
  s.platform  = :ios
  s.summary   = 'Bento AD SDK for iOS'
  s.homepage  = 'http://developer.viacom.com/mdp_download/mraid-sdk-2/'
  s.license   = ''
  s.author    = { 'Viacom' =>  'http://developer.viacom.com' }
  s.source    = { :git => 'https://github.com/mtvn-player/Ad-SDK-iOS-V2.git', :tag => "#{s.version}" }
  s.requires_arc = false
  s.ios.xcconfig = {
        'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/VMN-iOS-Ad-Component/ViacomMRAID/ViacomMRAID"'
        }
  s.ios.resource_bundle = { 'ViacomMRAIDResources' => 'ViacomMRAID/ViacomMRAID/*.{png,js,html,jpg,otf,xib}' }
  s.source_files  = 'ViacomMRAID/ViacomMRAID/*.{h,m}'
  s.frameworks = 'Foundation', 'UIKit', 'CoreText'
end


Pod::Spec.new do |s|
  s.name         = 'VMNSocialMedia-iOS-SDK'
  s.version      = '1.0'
  s.license      = 'BSD'
  s.platform     = :ios

  s.summary      = 'The SM4 SDK offers a drop-in solution for adding a social community into an app. The SDK offers a convenient layer of abstraction for API services exposed by Zeebox, Flux, Twitter and Facebook, facilitating development, integration, testing and support.'
  s.homepage     = 'https://github.com/mtvn-player/sm4_ios_sdk'
  s.author       = { 'Viacom Media Networks' => 'isaac.dasilva@viacom.com' }
  s.source       = { :git => 'git@github.com:mtvn-player/sm4_ios_sdk.git', :tag => 'v1.0' }

  files = FileList['SM4SDK/FrameworkSource/*.{h,m,c}']
  s.source_files = files
  
  s.libraries    = 'z', 'sqlite3.0'
  s.frameworks   = 'AdSupport', 'Social', 'SystemConfiguration', 'Accounts',
                   'Twitter', 'UIKit', 'Foundation', 'CoreGraphics', 'CoreFoundation'
end

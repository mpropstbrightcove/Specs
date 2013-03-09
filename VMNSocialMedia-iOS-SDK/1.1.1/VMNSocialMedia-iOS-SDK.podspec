Pod::Spec.new do |s|
  s.name         = 'VMNSocialMedia-iOS-SDK'
  s.version      = '1.1.1'
  s.license      = ''
  s.platform     = :ios
  s.summary      = 'The SM4 SDK offers a drop-in solution for adding a social community into an app. The SDK offers a convenient layer of abstraction for API services exposed by Zeebox, Flux, Twitter and Facebook, facilitating development, integration, testing and support.'
  s.homepage     = 'https://github.com/mtvn-player/socialmedia-lib-ios'
  s.author       = { 'Viacom Media Networks' => 'isaac.dasilva@viacom.com' }
  s.source       = { :git => 'https://github.com/mtvn-player/socialmedia-lib-ios.git', :tag => 'v1.1.1' }
  files = FileList['FrameworkSource/SM4SDK/SDKSource/*.{h,m,c}']
  s.source_files = files
  s.resources = "FrameworkSource/SM4SDK/VMNSocialMediaSDKResources.bundle"
  s.dependency 'JSONKit', '~> 1.4'
  s.weak_frameworks = 'Accounts', 'AdSupport', 'Social'
  s.frameworks   = 'SystemConfiguration','Twitter', 'UIKit', 'Foundation', 'CoreGraphics', 'CoreFoundation'
end

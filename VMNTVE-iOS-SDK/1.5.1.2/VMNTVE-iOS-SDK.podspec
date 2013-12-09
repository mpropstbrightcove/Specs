Pod::Spec.new do |s|
  s.name         = "VMNTVE-iOS-SDK"
  s.version      = "1.5.1.2"
  s.license      = ''
  s.platform     = :ios, '6.0'
  s.summary      = 'TVE Authentication Component for Native iOS represents a library for iOS devices. This is solution for TV Everywhere offers cross-domain single-sign-on authentication and authorization.'
  s.homepage     = "https://github.com/mtvn-player/VMNTVE-iOS.git"
  s.author       = 'TVE Team'
  s.source       = { :git => "https://github.com/mtvn-player/VMNTVE-iOS.git", :tag => "1.5.1.2" }
  s.preserve_paths = 'ComponentSource/lib/libTVEAuthComponent-iOS.a'
  s.resources = 'ComponentSource/config/adobepass.p12', 'ComponentSource/bundle/TVEAuthResources.bundle'
  s.libraries = 'TVEAuthComponent-iOS', 'xml2'
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/VMNTVE-iOS-SDK/ComponentSource/lib/' }
  s.frameworks = 'QuartzCore', 'CoreImage', 'SystemConfiguration', 'Security', 'CoreText', 'MessageUI', 'Twitter', 'MobileCoreServices', 'AssetsLibrary', 'MapKit', 'ImageIO'
  s.weak_frameworks = 'Accounts', 'AdSupport', 'Social'
  s.source_files = 'ComponentSource/headers/*.h'
  s.dependency 'SSKeychain'
  s.dependency 'Facebook-iOS-SDK', '3.7.0'
  s.dependency 'AFNetworking', '1.3.2'
  s.dependency 'SBJson', '~> 3.0.4'
  s.dependency 'SDWebImage', '3.5'
  s.dependency 'MBProgressHUD'
  s.dependency 'hpple', '0.2.0'
  s.dependency 'TTTAttributedLabel', '~> 1.6.3'
  s.dependency 'VMNSocialMedia-iOS-SDK', '1.3.1'
  
end

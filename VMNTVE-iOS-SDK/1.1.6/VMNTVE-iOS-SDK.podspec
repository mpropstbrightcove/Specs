Pod::Spec.new do |s|
  s.name         = "VMNTVE-iOS-SDK"
  s.version      = "1.1.6"
  s.license      = ''
  s.platform     = :ios, '5.0'
  s.summary      = 'TVE Authentication Component for Native iOS represents a library for iOS devices. This is solution for TV Everywhere offers cross-domain single-sign-on authentication and authorization.'
  s.homepage     = "https://github.com/mtvn-player/VMNTVE-iOS.git"
  s.author       = 'TVE Team'
  s.source       = { :git => "https://github.com/mtvn-player/VMNTVE-iOS.git", :tag => "1.1.6" }
  s.preserve_paths = 'ComponentSource/lib/libTVEAuthComponent-iOS.a'
  s.resources = 'ComponentSource/config/adobepass.p12', 'ComponentSource/bundle/TVEAuthResources.bundle'
  s.libraries = 'TVEAuthComponent-iOS', 'xml2'
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/VMNTVE-iOS-SDK/ComponentSource/lib/' }
  s.frameworks = 'QuartzCore', 'SystemConfiguration', 'Security', 'CoreText'
  s.source_files = 'ComponentSource/headers/*.h'
  s.dependency 'TTTAttributedLabel', '~> 1.6.2'
end
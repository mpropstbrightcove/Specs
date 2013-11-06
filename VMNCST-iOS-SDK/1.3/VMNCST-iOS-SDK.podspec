Pod::Spec.new do |s|
  s.name         = 'VMNCST-iOS-SDK'
  s.version      = '1.3.1'
  s.license      = ''
  s.platform     = :ios
  s.summary      = 'The Cross-Selling-Tool (CST) is a platform component that enables brands to promote related products within any host application.'
  s.homepage     = 'https://github.com/mtvn-player/VMNCST-iOS.git'
  s.author       = { 'Viacom Media Networks' => 'Randy.Weinstein@mtvnstaff.com' }
  s.source       = { :git => 'https://github.com/mtvn-player/VMNCST-iOS.git', :tag => 'v1.3.1' }
  files = 'SampleApp-StaticFramework/VMNCSTFramework.framework/*.{*}'
  s.source_files = files
  s.frameworks   = 'SystemConfiguration','UIKit', 'Foundation', 'CoreGraphics', 'CoreFoundation'
end

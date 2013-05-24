Pod::Spec.new do |s|
  s.name      = 'VMNPlayoutSDK'
  s.version   = '1.9.6'
  s.platform  = :ios
  s.summary   = "The VMNPlayout SDK for iOS"
  s.homepage  = ''
  s.license   = ''
  s.author    = { 'Viacom' =>  '' }             
  s.source    = { :git => 'https://github.com/mtvn-player/VMNPlayoutSDK-iOS.git', 
                  :tag => "#{s.version}" }
  
  s.platform = :ios, '5.0'
  framework_path = 'FrameworkSource/VMNPlayoutSDK.framework'
  s.source_files  = "#{framework_path}/Versions/A/Headers/*.h"
  s.requires_arc = false
  s.frameworks = 'VMNPlayoutSDK'
  s.preserve_paths = framework_path
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/VMNPlayoutSDK/FrameworkSource"' }
  s.dependency 'SBJson', '~> 3.2'
end
Pod::Spec.new do |s|
  s.name         = 'VMNAffiliateLinkMaker'
  s.version      = '1.0'
  s.license      = ''
  s.platform     = :ios
  s.summary      = 'The affiliate link maker transforms iTunes links into affiliate links.'
  s.homepage     = 'https://github.com/mtvn-player/VMNAffiliateLinkMaker'
  s.author       = { 'Viacom Media Networks' => 'aaron.harmon@viacom.com' }
  s.source       = { :git => 'https://github.com/mtvn-player/VMNAffiliateLinkMaker.git', :tag => 'v0.5.0' }
  s.source_files = 'iOS/Source/VMNLinkMaker/*.{h,m,c}'
  s.frameworks   = 'Foundation'
end
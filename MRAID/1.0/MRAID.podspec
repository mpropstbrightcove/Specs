Pod::Spec.new do |s|
  s.name      = 'MRAID'
  s.version   = '1.0'
  s.platform  = :ios
  s.summary   = 'An implementation of the MRAID SDK ' \
                'for iOS.'
  s.homepage  = 'http://developer.viacom.com/mdp_download/mraid-sdk-2/'
  s.license   = {
    :type => 'MIT',
    :text => <<-LICENSE
              Copyright (C) 2012-2013, Viacom

              Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

              The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

              THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
    LICENSE
  }
  s.author    = { 'Viacom' =>  'http://developer.viacom.com/mdp_download/mraid-sdk-2/' }             
  s.source    = { :http => 'http://developer.viacom.com/wp-content/uploads/2012/11/mraidSDKpkg.zip' }
  s.requires_arc = true
  s.preserve_paths = 'Users/hudson/build/workspace/BTGTestHarness_DevPortal/BTGTestHarness/trunk/xcode/ViacomMRAIDv1.0.3/libViacomMRAID.a'
  s.resources = 'Users/hudson/build/workspace/BTGTestHarness_DevPortal/BTGTestHarness/trunk/xcode/ViacomMRAIDv1.0.3//*.{png,js,html}'
  s.library = 'ViacomMRAID', 'z'
  s.ios.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/MRAID/mraidSDKpkg/xcode/ViacomMRAID"' }
  s.source_files  = 'Users/hudson/build/workspace/BTGTestHarness_DevPortal/BTGTestHarness/trunk/xcode/ViacomMRAIDv1.0.3/*.{h,m}'
end

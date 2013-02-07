Pod::Spec.new do |s|
  s.name      = 'VMNPlayoutSDK'
  s.version   = '1.0'
  s.platform  = :ios
  s.summary   = "The VMNPlayout SDK is a component that is aware of a program schedule. It is the mediator that coordinates much (but not all) of the interaction between the application and the player. Using its combined knowledge of the schedule, the current server time, the viewer's position in the schedule, and the rules set forth in the channel's synchronization policy, it is responsible for telling other components in the application when to take certain actions. This can include telling the player to play a video, telling the application to display a "sync announcement," or telling both the player and the application that there's no video to play. As the central source of knowledge about the schedule, it can also answer queries about it. For example, the application may need to know what's on next, what's scheduled tomorrow, or what is scheduled for the entire week."
  s.homepage  = 'http://developer.viacom.com/mdp_download/vmnplayout-sdk-ios/'
  s.license   = {
    :type => 'MIT',
    :text => <<-LICENSE
              Copyright (C) 2012-2013, Viacom

              Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

              The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

              THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
    LICENSE
  }
  s.author    = { 'Viacom' =>  'http://developer.viacom.com/mdp_download/vmnplayout-sdk-ios/' }             
  s.source    = { :http => 'http://mtvnmobile.mtvnservices-d.mtvi.com/appbin/builds/temp/VMNPlayoutSampleAppiOS/VMNPlayoutSDKSample-iOS-1.0.zip' }
  s.requires_arc = false
end

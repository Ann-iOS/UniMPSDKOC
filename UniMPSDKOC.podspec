#
# Be sure to run `pod lib lint UniMPSDKOC.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UniMPSDKOC'
  s.version          = '0.1.0'
  s.summary          = 'A short description of UniMPSDKOC.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "UniMP SDK Object-C"

  s.homepage         = 'https://github.com/Anan-iOS/UniMPSDKOC'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Anan' => 'm18620345206@163.com' }
  s.source           = { :git => 'https://github.com/Anan-iOS/UniMPSDKOC.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'


  s.pod_target_xcconfig = {
        'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.ios.deployment_target = '12.0'
  s.static_framework = true
  s.swift_version = '5.5'

  s.source_files = [
    'UniMPSDKOC/Headers/**/*',
  ]
  s.public_header_files = [
    'UniMPSDKOC/Headers/**/*.h'
  ]

  s.vendored_library = "UniMPSDKOC/Libs/*.{a}"
  s.vendored_frameworks = "UniMPSDKOC/Libs/*.{framework}"


  s.frameworks = ['JavaScriptCore','CoreMedia','MediaPlayer','AVFoundation','AVKit','GLKit','OpenGLES', 'CoreText','QuartzCore','CoreGraphics','QuickLook','CoreTelephony','UIKit','WebKit', 'SystemConfiguration', 'ImageIO']
  s.libraries = ['iconv', 'c++']

  #'UniMPSDK/Classes/**/*'

  # s.resource_bundles = {
  #   'UniMPSDK' => ['UniMPSDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

  s.resource_bundles = {
    'UniMPSDKOCResource' => ['UniMPSDKOC/Resources/*.{js,ttf,bundle}']
  }

end

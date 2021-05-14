#
# Be sure to run `pod lib lint SwiftyNetworkKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#
# 1. new code update github
# 2. local not code : pod repo add SwiftyNetworkKit  https://github.com/DanielZSY/SwiftyNetworkKit.git
#    local uodate code: cd ~/.cocoapods/repos/SwiftyNetworkKit. Then execute: pod repo update SwiftyNetworkKit
# 3. pod repo push SwiftyNetworkKit SwiftyNetworkKit.podspec --allow-warnings --sources='https://github.com/CocoaPods/Specs.git'
# 4. pod trunk push SwiftyNetworkKit.podspec --allow-warnings
# 5. pod install or pod update on you project execute

Pod::Spec.new do |s|
  s.name             = 'SwiftyNetworkKit'
  s.version          = '0.0.1'
  s.summary          = 'SwiftyNetworkKit'
  s.module_name      = 'SwiftyNetworkKit'
  
  s.homepage         = 'https://github.com/DanielZSY/SwiftyNetworkKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'DanielZSY' => 'DanielZSY@163.com' }
  s.source           = { :git => 'https://github.com/DanielZSY/SwiftyNetworkKit.git', :tag => s.version.to_s }
  
  s.platform              = :ios, '10.0'
  s.swift_versions        = "5"
  s.ios.deployment_target = '10.0'
  s.pod_target_xcconfig   = { 'SWIFT_VERSION' => '5.0' }
  
  s.frameworks    = 'UIKit'
  s.libraries     = 'z', 'c++'
  s.source_files  = 'SwiftyNetworkKit/**/*.{swift,h,m}'
  
  s.dependency 'Moya'
  s.dependency 'Result'
  s.dependency 'Alamofire'
  s.dependency 'SwiftyLocalKit'
  s.dependency 'AlamofireNetworkActivityIndicator'
end

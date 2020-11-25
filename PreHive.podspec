#
#  Be sure to run `pod spec lint hive.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name = 'PreHive'
  s.version = '1.3'
  s.summary ='this is a test.'
  s.swift_version  = '4.2'
  s.description = 'this is a test.00000'
  s.homepage     = 'https://github.com/ahl0107'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'did-dev' => 'liaihong@gmail.com' }
  s.platform     = :ios, '11.0'
  s.ios.deployment_target = '11.0'
  s.source       = {'http':'https://github.com/ahl0107/PreHive/archive/release-v1.3.zip'}
  s.source_files = 'ElastosHiveSDK/**/*.swift'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.dependency 'ElastosDIDSDK', '1.3'
  s.dependency 'Alamofire','4.8.2'
  s.dependency 'PromiseKit','6.9'
  s.dependency 'BlueRSA', '~> 1.0'
  s.dependency 'LoggerAPI','~> 1.7'
  s.dependency 'KituraContracts','~> 1.1'
  s.dependency 'BlueCryptor', '~> 1.0'
end

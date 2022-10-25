#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint plugin_using_protobuf.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'plugin_using_protobuf'
  s.version          = '0.0.1'
  s.summary          = 'a flutter plugin that use protobuf to handle passing data between native and flutter'
  s.description      = <<-DESC
a flutter plugin that use protobuf to handle passing data between native and flutter
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'SwiftProtobuf', '1.20.2'
  s.platform = :ios, '9.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end

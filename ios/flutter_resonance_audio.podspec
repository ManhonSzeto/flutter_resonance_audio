#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_resonance_audio.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_resonance_audio'
  s.version          = '0.0.1'
  s.summary          = 'A flutter wrapper of google resonance audio lib (google vr audio)'
  s.description      = <<-DESC
A flutter wrapper of google resonance audio lib (google vr audio)
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end

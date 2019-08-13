require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RNHandoff"
  s.version      = package['version']
  s.summary      = "React Native Handoff support for iOS"

  s.homepage     = "https://github.com/IzaakSultan/react-native-handoff"
  s.author     = "IzaakSultan"
  s.license      = "MIT"
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/IzaakSultan/react-native-handoff.git", :tag => s.version.to_s }
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency 'React'
end

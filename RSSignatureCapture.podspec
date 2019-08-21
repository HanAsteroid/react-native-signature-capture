require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name                = "RSSignatureCapture"
  s.version             = package['version']
  s.summary             = package['description']
  s.homepage            = "https://github.com/RepairShopr/react-native-signature-capture"
  s.license             = package['license']
  s.author              = package['author']
  s.source              = { :git => 'https://github.com/RepairShopr/react-native-signature-capture.git', :tag => "v#{s.version}" }
  s.default_subspec     = 'Core'
  s.requires_arc        = true
  s.platform            = :ios, "7.0"

  s.dependency 'React'

  s.subspec 'Core' do |ss|
    ss.source_files     = "ios/*.{h,m}"
  end

end

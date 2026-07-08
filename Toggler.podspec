#
# Be sure to run `pod lib lint YNDropDownMenu.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Toggler'
  s.version          = '2.0.0'
  s.summary          = 'Easiest way to select a button and off other buttons'

  s.description      = <<-DESC
Easiest usage of button, written in Swift 6. You can add buttons what you want to control.
                        DESC

  s.homepage         = 'https://github.com/younatics/Toggler'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "Seungyoun Yi" => "younatics@gmail.com" }

  s.source           = { :git => 'https://github.com/younatics/Toggler.git', :tag => s.version.to_s }
  s.source_files     = 'Toggler/*.swift'

  s.swift_version = '6.0'
  s.ios.deployment_target = '13.0'

  s.frameworks = 'UIKit'
  s.requires_arc = true
end

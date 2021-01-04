Pod::Spec.new do |s|
  s.name             = 'ORSwiftUtils'
  s.version          = '0.1.2'
  s.summary          = 'Library with helpful utils for Swift'
  s.description      = <<-DESC
  Swift extensions and utils that allow you to have clean code.
                       DESC
  
  s.homepage         = 'https://github.com/rosolowski/ORSwiftUtils'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Oskar Rosołowski' => 'oskar.rosolowski@gmail.com' }
  s.source           = { :git => 'https://github.com/rosolowski/ORSwiftUtils.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.swift_versions = ['5.0']

  s.source_files = 'ORSwiftUtils/Classes/*.swift'

  s.frameworks = 'UIKit'
end

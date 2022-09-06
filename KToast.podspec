#
# Be sure to run `pod lib lint KToast.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KToast'
  s.version          = '0.1.5'
  s.summary          = 'A lightweight Toast library.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A lightweight swift Toast lib. You can use the KToast.showToast(text:String, textColor: UIColor, textFont:UIFont, backgroundColor: UIColor) class method to pop-up a toast message on any view controller. You don't need to care about memory management, KToast will take care of everything for you.
                       DESC

  s.homepage         = 'https://github.com/kmvdata/KToast'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'kmvdata' => 'kermit.mei@gmail.com' }
  s.source           = { :git => 'https://github.com/kmvdata/KToast.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'

  s.source_files = 'Classes/*'
  s.swift_version = '5.0'
  
  # s.resource_bundles = {
  #   'KToast' => ['KToast/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

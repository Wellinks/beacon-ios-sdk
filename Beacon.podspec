Pod::Spec.new do |s|
  s.name         = 'Beacon'
  s.version      = '2.0.1'
  s.swift_version = '5.0'
  s.summary      = 'The Help Scout Beacon SDK'
  s.license      = { :type => 'Commercial', :text => 'Help Scout. All rights reserved.' }

  s.description  = <<-DESC
                   The Help Scout Beacon SDK. Learn more at https://developer.helpscout.com/beacon-2/.
                   DESC

  s.homepage     = 'http://github.com/helpscout/beacon-ios-sdk'
  s.author       = { 'Help Scout' => 'help@helpscout.com' }
  s.platform     = :ios, '11.0'
  s.source       = { :git => 'https://github.com/helpscout/beacon-ios-sdk.git', :tag => s.version }

  s.source_files  = 'Beacon.framework/Headers/*.h'
  s.module_map = 'Beacon.framework/Modules/module.modulemap'
  s.preserve_paths = 'Beacon.framework/*'
  s.vendored_frameworks = 'Beacon.framework'
  s.resources = 'Beacon.framework/Beacon.bundle'
  s.frameworks = 'UIKit', 'Photos', 'UserNotifications', 'WebKit', 'MobileCoreServices', 'SafariServices', 'QuickLook', 'CoreData'
end

Pod::Spec.new do |s|
  s.name         = "ShowKit"
  s.version      = "1.0.23"
  s.summary      = "Video Conferencing, Audio Conferencing, Screen Sharing, Gesture Sharing, Co-Navigation."
  s.homepage     = "http://www.showkit.com"
  s.license      = {
    :type => 'Commercial',
    :text => <<-LICENSE
              © 2014 ShowKit. All rights reserved.
    LICENSE
  }
  s.author       = { "Anthony Kelani" => "anthony@showkit.com" }
  s.source       = { :http => "http://s3.amazonaws.com/showkitweb/release/20/ShowKit-1.0.23.zip" }

  s.platform     = :ios, '6.0'
  s.source_files = 'ShowKit.framework/Versions/A/Headers/ShowKit.h'
  s.preserve_paths = 'ShowKit.framework/*'

  s.frameworks = 'OpenGLES', 'AVFoundation', 'QuartzCore', 'CFNetwork', 'CoreVideo', 'CoreGraphics', 'CoreMedia', 'AudioToolbox', 'SystemConfiguration', 'ShowKit'
  s.libraries = 'resolv', 'z'
  s.xcconfig     = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/ShowKit"', 'OTHER_LDFLAGS' => '-lc++' }

  s.requires_arc = false
end

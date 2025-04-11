require "json"

Pod::Spec.new do |s|
  s.name         = "xurenxiang1219-ffmpeg-kit-ios-full"
  s.version      = "6.0.2"
  s.summary      = "FFmpeg Kit iOS Https Shared Framework"
  s.description  = "Includes FFmpeg with gmp and gnutls libraries enabled."
  s.homepage     = "https://github.com/xurenxiang1219/ffmpeg-kit"
  s.license      = { :type => "LGPL-3.0", :file => "ffmpegkit.xcframework/ios-arm64/ffmpegkit.framework/LICENSE" }
  s.authors      = "xurenxiang1219"

  s.platform          = :ios
  s.ios.deployment_target = "12.1"
  s.requires_arc      = true
  s.static_framework  = true

  s.source       = { :http => "https://github.com/xurenxiang1219/ffmpeg-kit/releases/download/v6.0.2-xurenxiang1219/ffmpeg-kit-full-6.0.LTS-ios-framework.zip"}

  s.libraries = [
    "z",
    "bz2",
    "c++",
    "iconv"
  ]

  s.frameworks = [
    "AudioToolbox",
    "AVFoundation",
    "CoreMedia",
    "VideoToolbox"
  ]
  s.vendored_frameworks = [
    "ffmpegkit.xcframework",
    "libavcodec.xcframework",
    "libavdevice.xcframework",
    "libavfilter.xcframework",
    "libavformat.xcframework",
    "libavutil.xcframework",
    "libswresample.xcframework",
    "libswscale.xcframework",
  ]
end

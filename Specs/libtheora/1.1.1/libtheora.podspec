Pod::Spec.new do |s|
  name = "theora"
  libname = "lib" + name
  ver = "1.1.1"
  libver = libname + "-" + ver
  source = "http://downloads.xiph.org/releases/" + name + "/" + libver + ".tar.bz2"
  sha1 = "8dcaa8e61cd86eb1244467c0b64b9ddac04ae262"

  s.name         = "libtheora"
  s.version      = ver
  s.summary      = "Low-level Theora video codec library"

  s.description  = <<-DESC
                   Xiph's C-based Theora video codec library, packaged for iOS.
                   Needed for decoding or encoding of video in Ogg media.
                   DESC

  s.homepage     = "https://xiph.org/" + name + "/"

  s.license      = { :type => "BSD", :file => "COPYING" }

  s.author             = { "Brion Vibber (packager)" => "brion@pobox.com" }
  s.social_media_url   = "https://planet.xiph.org/"

  s.platform     = :ios, "6.0"

  s.source       = { :http => source,
                     :sha1 => sha1 }

  s.compiler_flags = "-O3",
                     "-Wno-conversion",
                     "-Wno-tautological-compare",
                     "-Wno-absolute-value",
                     "-Wno-shift-op-parentheses",
                     "-Wno-logical-op-parentheses",
                     "-Wno-parentheses",
                     "-Wno-unused-function"
  s.source_files = "lib",
                   "include/**/*.h"
  s.exclude_files = "lib/encoder_disabled.c"
  s.public_header_files = "include/**/*.h"
  s.header_dir = name
  
  s.dependency 'libogg', '>=1.1'
end

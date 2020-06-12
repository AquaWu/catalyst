Pod::Spec.new do |s|
  s.name             = 'GoogleAppMeasurement'
  s.version          = '6.6.0'
  s.summary          = 'Shared measurement methods for Google libraries. Not intended for direct use'

  s.description      = <<-DESC
Measurement methods that are shared between Google libraries. This pod does not expose any headers
and isn't intended for direct use, but rather as a dependency of some Google libraries.
                       DESC

  s.homepage         = 'https://developers.google.com/ios'
  s.license          = { :type => 'Copyright', :text => 'Copyright 2020 Google' }
  s.authors          = 'Google, Inc.'

  s.source           = {
    # :http => 'http://127.0.0.1:51687/GoogleAppMeasurement-6.7.0-catalyst-beta.tar.gz'
    # :http => 'https://dl.google.com/dl/cpdc/81e4cd682121a9c8/GoogleAppMeasurement-6.7.0-catalyst-beta.tar.gz'

    :http => 'https://dl.google.com/dl/cpdc/81e4cd682121a9c8/GoogleAppMeasurement-6.6.0.tar.gz'
  }
  s.platform = :ios, '8.0'

  s.cocoapods_version = '>= 1.4.0'

  s.libraries = ['c++', 'sqlite3', 'z']
  s.frameworks = ['StoreKit']

  s.dependency 'GoogleUtilities/AppDelegateSwizzler', '~> 6.6'
  s.dependency 'GoogleUtilities/MethodSwizzler', '~> 6.6'
  s.dependency 'GoogleUtilities/NSData+zlib', '~> 6.6'
  s.dependency 'GoogleUtilities/Network', '~> 6.6'
  s.dependency 'nanopb', '~> 1.30905.0'

  # s.vendored_frameworks = ['Frameworks/GoogleAppMeasurement.xcframework']
  s.vendored_frameworks = ['Frameworks/GoogleAppMeasurement.framework']
end

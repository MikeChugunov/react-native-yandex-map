require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-yandex-map"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-yandex-map
                   DESC
  s.homepage     = "https://github.com/MikeChugunov/react-native-yandex-map"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.authors      = { "Mike Chugunov" => "mike.chugunov@yandex.ru" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/github_account/react-native-yandex-map.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"
  s.dependency 'YandexMapKit', '~> 3.4'
  
  # s.dependency "..."
end


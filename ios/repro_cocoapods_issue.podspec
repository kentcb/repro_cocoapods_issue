#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'repro_cocoapods_issue'
  s.version          = '0.0.1'
  s.summary          = 'A new flutter plugin project.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'

  s.ios.deployment_target = '8.0'

  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '"${PROJECT_DIR}/external/"'}
  s.xcconfig = { 'USER_HEADER_SEARCH_PATHS' => '"${PROJECT_DIR}/external/"'}
  s.user_target_xcconfig = { 'HEADER_SEARCH_PATHS' => '"${PROJECT_DIR}/external/"'}
  s.user_target_xcconfig = { 'USER_HEADER_SEARCH_PATHS' => '"${PROJECT_DIR}/external/"'}
  s.pod_target_xcconfig = { 'HEADER_SEARCH_PATHS' => '"${PROJECT_DIR}/external/"'}
  s.pod_target_xcconfig = { 'USER_HEADER_SEARCH_PATHS' => '"${PROJECT_DIR}/external/"'}
  s.compiler_flags = '-Iexternal/'
end


folly_version = '2021.06.28.00-v2'
folly_compiler_flags = "-DFOLLY_NO_CONFIG -DFOLLY_MOBILE=1 -DFOLLY_USE_LIBCPP=1 -Wno-shorten-64-to-32"
Pod::Spec.new do |s|
  s.name = "NativeSampleModule"
  s.version = "0.0.1"
  s.summary = "NativeSampleModule"
  s.description = "NativeSampleModule"
  s.homepage = ""
  s.license = "MIT"
  s.platforms = { :ios => "11.0"}
  s.author = ""
  s.source = { :git => "https://github.com/facebook/react-native.git", :tag => "#{s.version}"}
  s.source_files = "./**/*.{h,m,mm,swift}"
  s.compiler_flags = folly_compiler_flags
  s.pod_target_xcconfig = {
    "HEADER_SEARCH_PATHS" => "\"$(PODS_ROOT)/boost\""
  }
  s.dependancy "React"
  s.dependancy "React-RCTFabric"
  s.dependancy "React-Codegen"
  s.dependancy "RCT-Folly", folly_version
  s.dependancy "RCTRequired"
  s.dependancy "RCTTypeSafety"
  s.dependancy "ReactCommon/turbomodule/core"
end
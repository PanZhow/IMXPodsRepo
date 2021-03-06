#
#  Be sure to run `pod spec lint IMXUIsCptPodspec.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "IMXDebugModule"
  s.version      = "1.1.0"
  s.summary      = "IMXDebugModule:Debug componet sets."

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "zhoupanpan" => "2331838272@qq.com" }
  
  s.platform     = :ios, "8.0"
  #s.ios.deployment_target = '8.0' #  When using multiple platforms

  s.homepage     = "https://gitlab.com/zhowpan1127/IMXDebugModule.git"
  s.source       = { :git => "git@gitlab.com:zhowpan1127/IMXDebugModule.git", :tag => "#{s.version}" }

  s.requires_arc = true
  s.source_files  = 'IMXDebugModule/Biz/*.{h,m}'
  s.public_header_files = [
      'IMXDebugModule/Biz/*.{h}'
    ]
# IMXPerformance Cpt
  s.subspec 'IMXPerformance' do |pfc|
    pfc.source_files  = 'IMXDebugModule/Biz/IMXPerformance/*.{h,m}'
    pfc.public_header_files = [
      'IMXDebugModule/Biz/IMXPerformance/*.{h}'
    ]
    pfc.dependency 'IMXDebugModule/private'
  end
# private Cpt
  s.subspec 'private' do |prt|
    prt.source_files  = 'IMXDebugModule/Biz/private/*.{h,m}'
    prt.public_header_files = [
      'IMXDebugModule/Biz/private/*.{h}'
    ]
  end
s.dependency 'Masonry' ,'~> 1.1.0'
s.dependency 'pop' ,'~> 1.0.10'
# s.dependency 'FBMemoryProfiler' ,'~> 0.1.3'
# s.dependency 'FBAllocationTracker' ,'~> 0.1.5'
# s.dependency 'FBRetainCycleDetector' ,'~> 0.1.3'
s.dependency 'FLEX' ,'~> 2.4.0'

s.dependency 'IMXFuncCpt/Launcher','~> 1.2.0' ##私有库引用
end


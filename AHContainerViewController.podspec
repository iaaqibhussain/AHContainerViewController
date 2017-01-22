

Pod::Spec.new do |s|
  s.name             = 'AHContainerViewController'
  s.version          = '0.1.0'
  s.summary          = 'Helper classes written in ObjC for using Container Views.'




  s.homepage         = 'https://github.com/iaaqib/AHContainerViewController'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Aaqib Hussain' => 'iaaqibhussain@outlook.com' }
  s.source           = { :git => 'https://github.com/<GITHUB_USERNAME>/AHContainerViewController.git', :tag => s.version.to_s }


  s.ios.deployment_target = '8.0'

  s.source_files = 'AHContainerViewController/Classes/**/*'
  

end

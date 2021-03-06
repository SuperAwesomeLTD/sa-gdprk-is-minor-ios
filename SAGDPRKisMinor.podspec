Pod::Spec.new do |s|
  s.name             = 'SAGDPRKisMinor'
  s.version          = '2.0.1'
  s.summary          = 'The SuperAwesome GDPR-K is minor iOS SDK'

  s.description      = <<-DESC
The SuperAwesome GDPR-K is minor iOS SDK
                       DESC

  s.homepage         = 'https://github.com/SuperAwesomeLTD/sa-gdprk-is-minor-ios'
  s.license          = {
	:type => "GNU LESSER GENERAL PUBLIC LICENSE Version 3", 
	:file => "LICENSE" 
}
  s.author           = {
	 'GuilhermeMota93' => 'guilherme.mota@superawesome.tv' 
}
  s.source           = {
 	:git => "https://github.com/SuperAwesomeLTD/sa-gdprk-is-minor-ios.git", 
	:branch => "master",
	:tag => "2.0.1" 
}
  s.ios.deployment_target = '8.0'
  s.platform = :ios, '8.0'  
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3.2' }
  s.source_files = 'Pod/Classes/**/*'
  s.dependency 'SAJsonParser', '1.3.6'
  s.dependency 'SAUtils', '1.5.6'
  s.dependency 'SANetworking',  '1.0.1'  
end

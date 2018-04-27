Pod::Spec.new do |s|
  s.name             = 'SAGDPRKisMinor'
  s.version          = '0.4.0'
  s.summary          = 'The SuperAwesome GDPR-K is minor iOS SDK'

  s.description      = <<-DESC
The SuperAwesome GDPR-K is minor iOS SDK
                       DESC

  s.homepage         = 'https://github.com/SuperAwesomeLTD/sa-gdprk-is-minor-ios'
  s.license          = {
	:type => "GNU GENERAL PUBLIC LICENSE Version 3", 
	:file => "LICENSE" 
}
  s.author           = {
	 'GuilhermeMota93' => 'guilherme.mota@superawesome.tv' 
}
  s.source           = {
 	:git => "https://github.com/SuperAwesomeLTD/sa-gdprk-is-minor-ios.git", 
	:branch => "master",
	:tag => "#{s.version}" 
}
  s.ios.deployment_target = '9.0'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3.2' }
  s.source_files = 'SAGDPRKisMinor/Classes/**/*'
  s.dependency 'SAJsonParser', '1.3.3'
  s.dependency 'SAUtils', '1.5.2'
  s.dependency 'SANetworking',  '0.3.1'  


end


Pod::Spec.new do |spec|
  spec.name             = 'SimplestLogger'
  spec.version          = '0.1.3'
  spec.summary          = 'A simple logger'

  spec.description      = <<-DESC
A simple logger.
                       DESC

  spec.homepage         = 'https://github.com/hershalle/SimplestLogger.git'
  spec.license          = { :type => 'MIT' }
  spec.author           = { 'hershalle' => 'hershalle@gmail.com' }
  spec.social_media_url = 'https://twitter.com/hershalle'
    
  spec.ios.deployment_target = '11.0'
  spec.swift_version   = '5.0'
  spec.source          = { :git => 'https://github.com/hershalle/SimplestLogger.git' , :tag => spec.version.to_s }
  spec.source_files = "Sources"
    

end

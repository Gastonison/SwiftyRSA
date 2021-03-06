Pod::Spec.new do |s|

  s.name         = "JPSwiftyRSA"
  s.version      = "1.4.1"
  s.summary      = "Public key RSA encryption in Swift."

  s.description  = <<-DESC
                   Encrypt with a RSA public key, decrypt with a RSA private key.
                   DESC

  s.homepage     = "https://github.com/TakeScoop/SwiftyRSA"
  s.license      = "MIT"
  s.author       = { "Scoop" => "ops@takescoop.com" }

  s.source       = { :git => "https://github.com/Gastonison/SwiftyRSA.git", :tag => s.version }
  s.source_files = "SwiftyRSA/*.{swift,m,h}"
  s.exclude_files = "SwiftyRSA/SwiftyRSA+ObjC.swift"
  s.framework    = "Security"
  s.requires_arc = true
  s.swift_version = "3.2"
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3.2' }
  
  s.ios.deployment_target = "10.0"
  s.tvos.deployment_target = "10.0"
  s.watchos.deployment_target = "3.0"

  s.subspec "ObjC" do |sp|
    sp.source_files = "SwiftyRSA/*.{swift,m,h}"
  end
end

Pod::Spec.new do |s|
  s.name             = 'NSAttributedStringBuilder'
  s.version          = '0.1'
  s.summary          = 'Locatable is a micro-framework that exposes a Function Builder to compose attributed strings'

  s.description      = <<-DESC
NSAttributedStringBuilder is a Swift micro framework that leverages Function Builders to implement syntactic sugar that lets you intuitively compose attributed strings.

Instead of writing:

let attributedString = NSMutableAttributedString(string: "Hello", attributes: [.font: UIFont.systemFont(ofSize: 24), .foregroundColor: UIColor.red])
attributedString(NSAttributedString(string: " world!", attributes: [.font: UIFont.systemFont(ofSize: 20), .foregroundColor: UIColor.orange]))

You can now write:

let attributedString = NSAttributedString.composing {
    NSAttributedString(string: "Hello", attributes: [.font: UIFont.systemFont(ofSize: 24), .foregroundColor: UIColor.red])
    NSAttributedString(string: " world!", attributes: [.font: UIFont.systemFont(ofSize: 20), .foregroundColor: UIColor.orange])
}
                       DESC

  s.homepage         = 'https://github.com/vincent-pradeilles/NSAttributedStringBuilder'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Vincent Pradeilles' => 'vin.pradeilles+NSAttributedStringBuilder@gmail.com' }
  s.source           = { :git => 'https://github.com/vincent-pradeilles/NSAttributedStringBuilder.git', :tag => s.version.to_s }

  s.swift_version = '5.1'
  s.ios.deployment_target = '9.0'

  s.framework = 'Foundation'

  s.source_files = 'NSAttributedStringBuilder/**/*.swift'

end

Pod::Spec.new do |s|

s.name         = "YCMenuView"
s.version      = "1.1.0"
s.ios.deployment_target = '8.0'
s.summary      = "a popup menu which can be highly customized."
s.homepage     = "https://github.com/WellsYC/YCMenuView"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author       = { "WellsYC" => "461620115@qq.com" }
s.license      = "MIT"
s.source       = { :git => "https://github.com/WellsYC/YCMenuView.git", :tag => s.version }
s.source_files  = 'YCMenuViewCompont'
s.requires_arc = true

end


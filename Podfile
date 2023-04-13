use_frameworks!

platform :ios, '15.0'

source 'https://github.com/CocoaPods/Specs.git'

target 'OnionShare' do

  pod 'MBProgressHUD', :git => 'https://github.com/threema-jarem/MBProgressHUD.git'
  pod 'ReachabilitySwift', :git => 'https://github.com/tladesignz/Reachability.swift'
  pod 'AdParticipesCumCepis', :git => 'https://github.com/tladesignz/AdParticipesCumCepis.git'
  pod 'Stencil', '~> 0.14'

end

target 'ActionExtension' do

  pod 'MBProgressHUD', :git => 'https://github.com/threema-jarem/MBProgressHUD.git'
  pod 'AdParticipesCumCepisExtension', :git => 'https://github.com/tladesignz/AdParticipesCumCepis.git'

end

# Fix Xcode 14 code signing issues with bundles.
# See https://github.com/CocoaPods/CocoaPods/issues/8891#issuecomment-1249151085
post_install do |installer|
  installer.pods_project.targets.each do |target|
    if target.respond_to?(:product_type) and target.product_type == "com.apple.product-type.bundle"
      target.build_configurations.each do |config|
          config.build_settings['CODE_SIGNING_ALLOWED'] = 'NO'
      end
    end
  end
end

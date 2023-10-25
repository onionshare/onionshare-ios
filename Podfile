use_frameworks!

platform :ios, '15.0'

source 'https://github.com/CocoaPods/Specs.git'

target 'OnionShare' do

  pod 'AdParticipesCumCepis', :git => 'https://github.com/tladesignz/AdParticipesCumCepis.git'
  pod 'Stencil', '~> 0.14'

end

target 'ActionExtension' do

  pod 'AdParticipesCumCepisExtension', :git => 'https://github.com/tladesignz/AdParticipesCumCepis.git'

end

# Fix Xcode 15 compile issues.
post_install do |installer|
  installer.pods_project.targets.each do |target|
    if target.respond_to?(:name) and !target.name.start_with?("Pods-")
      target.build_configurations.each do |config|
        if config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'].to_f < 12
          config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
        end
      end
    end
  end
end



Pod::Spec.new do |s|
    s.name             = 'ATTAnalyticsHelpers'
    s.version          = '0.0.1'
    s.summary          = 'A helper library for supporting multiple analytics.'

    s.homepage         = 'https://github.com/sreekanthrad/ATTAnalyticsHelpers'

    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Sreekanth R' => 'sreekanthrad@gmail.com' }
    s.source           = { :git => 'https://github.com/sreekanthrad/ATTAnalyticsHelpers.git', :tag => s.version.to_s }

    s.ios.deployment_target = '8.0'
    s.source_files = 'ATTAnalyticsHelpers/Classes/**/*'

    s.subspec 'GoogleAnalytics' do |ga|
        ga.prefix_header_contents = '#define GA_EXISTS'
        ga.source_files = 'ATTAnalyticsHelpers/Classes/**/*'
        ga.dependency 'GoogleAnalytics'
    end
end

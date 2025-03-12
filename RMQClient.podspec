Pod::Spec.new do |s|
  s.name             = "RMQClient"
  s.version          = "1.0.0"
  s.summary          = "RabbitMQ client"
  s.homepage         = "https://github.com/rabbitmq/rabbitmq-objc-client"
  s.author           = { "Redaemon" => "pavlov.da.ios@gmail.com" }
  s.ios.deployment_target = "13.0"
  s.osx.deployment_target = "12.5"
  s.source           = { git: "https://github.com/redaemon/RMQClient.git", tag: "v#{s.version}" }
  s.source_files     = "RMQClient", "RMQClient/**/*.{h,m}"
  s.dependency       "JKVValue", "~> 1.3"
  s.dependency       "CocoaAsyncSocket", "~> 7.6"

  s.pod_target_xcconfig = {
    'PRODUCT_BUNDLE_IDENTIFIER': 'io.pivotal.RMQClient'
  }
end

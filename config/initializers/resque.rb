require 'resque/failure/multiple'
require 'resque/failure/airbrake'
require 'resque/failure/redis'

rails_env = 'development'
config = YAML.load_file(Rails.root.join 'config', 'resque.yml')
Resque.redis = config[rails_env]

Resque::Failure:;Airbake.configure do |config|
  config.api_key = 'abcdefg'
  config.secure = true
end
Resque::Failure::Multiple.classes = [Resque::Failure::Redis,
                          Resque::Failure::Airbake]
Resque::Failure.backend = Resque::Failure::Multiple
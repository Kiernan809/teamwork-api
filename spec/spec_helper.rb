require "bundler/setup"
Bundler.setup

require 'webmock/rspec'


require "teamwork"

RSpec.configure do |config|
  # some (optional) config here
  config.include WebMock::API
end

require 'rubygems'
require 'bundler'
Bundler.setup(:default, :test)

require 'pry'

# require 'codeclimate-test-reporter'
# require 'coveralls'
# Coveralls.wear!

require 'footstats'

# CodeClimate::TestReporter.start

RSpec.configure do |config|
  config.color = true
  config.default_formatter = 'doc'
  config.order = :random
  config.filter_run :focus

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end

require 'rubygems'
require 'bundler'
Bundler.setup(:default, :test)

# require 'codeclimate-test-reporter'
# require 'coveralls'
# Coveralls.wear!

require 'footstats'

# CodeClimate::TestReporter.start

RSpec.configure do |config|
  config.color = true
  config.default_formatter = 'doc'
  config.order = :rand
end

require 'rubygems'
require 'bundler'
Bundler.setup(:default, :test)

Dir["./spec/support/**/*.rb"].each {|file| require file }
require 'footstats'

RSpec.configure do |config|
  config.color = true
  config.default_formatter = 'doc'
  config.order = :rand
end

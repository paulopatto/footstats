require 'rubygems'
require 'bundler/setup'
Bundler.setup :default

require 'footstats/version'
require 'footstats/resource'

require 'footstats/request/base'
require 'footstats/request/request_racing'

require 'footstats/racing/championship'
require 'footstats/racing/driver'
require 'footstats/racing/gp'
require 'footstats/racing/narration'
require 'footstats/racing/ranking'
require 'footstats/racing/team'

module Footstats
  # Your code goes here...
end

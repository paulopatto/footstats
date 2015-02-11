require 'rubygems'
require 'bundler/setup'
Bundler.setup :default

require 'footstats/version'
require 'footstats/client'
require 'footstats/resource'
require 'footstats/request/base'
require 'footstats/request/request_racing'

module Footstats
  class << self
    def included(base)
      base.extend ClassMethods
    end

    def new
      Client.new
    end
  end
end

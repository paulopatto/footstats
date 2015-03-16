require 'rubygems'
require 'bundler/setup'
Bundler.setup :default
require 'forwardable'

require 'footstats/version'
require 'footstats/client'
require 'footstats/config'
require 'footstats/resource'
require 'footstats/request/base'
require 'footstats/request/request_racing'

module Footstats
  class <<  self
    extend Forwardable
    def_delegators :configuration, :token, :token=

    def configuration
      Thread.current[:footstats_conf] ||= Footstats::Config.new
    end

    def configure(&block)
      yield configuration
    end

    def included(base)
      base.extend ClassMethods
    end

    def new(conf = configuration)
      Client.new(conf)
    end
  end
end


require 'rubygems'
require 'bundler/setup'
Bundler.setup :default
require 'forwardable'

require 'footstats/version'
require 'footstats/config'
require 'footstats/request'

Dir["./lib/footstats/api/f1/*.rb"].each do |file|
    require file
end

Dir["./lib/footstats/api/soccer/*.rb"].each do |file|
    require file
end

module Footstats
  class <<  self
    extend Forwardable
    # delegate to @config
    def_delegators :configuration, :token, :token=
    def_delegators :configuration, :endpoints, :endpoints=
    def_delegators :configuration, :base_urls, :verbose, :get_endpoint

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


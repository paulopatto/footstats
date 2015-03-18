require 'rubygems'
require 'bundler/setup'
Bundler.setup :default
require 'forwardable'

module Footstats
  class <<  self
    extend Forwardable
    # delegate to @config
    def_delegators :configuration, :token, :token=
    def_delegators :configuration, :endpoints, :endpoints=
    def_delegators :configuration,
      :base_urls,
      :verbose,
      :get_endpoint,
      :lang

    def configuration
      Thread.current[:footstats_conf] ||= Footstats::Config.new
    end

    def configure(&block)
      yield configuration
    end


    def included(base)
      base.extend ClassMethods
    end

  end
end

# CORE
require 'footstats/version'
require 'footstats/config'
require 'footstats/request'
require 'footstats/api_register'
require 'footstats/api_engine_interface'

# Load Api Engines
Dir["./lib/footstats/api/**/engine.rb"].each do |file|
    require file
end


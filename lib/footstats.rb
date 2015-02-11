require 'rubygems'
require 'bundler/setup'
Bundler.setup :default

require 'footstats/version'
require 'footstats/client'

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

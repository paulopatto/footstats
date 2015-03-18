#vim: ft=ruby
module Footstats
  class Config
    attr_accessor :token
    attr_accessor :endpoints
    attr_accessor :verbose
    attr_accessor :lang

    def initialize
      self.endpoints = {}
    end

    def get_endpoint(api)
      api = api.to_sym if api.class == String
      self.endpoints[api]
    end
  end
end

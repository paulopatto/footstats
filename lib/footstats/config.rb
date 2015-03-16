#vim: ft=ruby
module Footstats
  class Config
    attr_accessor :token
    attr_accessor :base_url

    def endpoint
      base_url || default_endpoint
    end

    private
    def default_endpoint
      "http://apicorrida.footstats.com.br/api"
    end
  end
end

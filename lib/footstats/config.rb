#vim: ft=ruby
module Footstats
  class Config
    attr_accessor :token
    attr_accessor :endpoints
    attr_accessor :verbose

    def base_urls
      endpoints || default_endpoints
    end

    def get_endpoint(api)
      case api.to_s
      when 'f1'
        base_urls[:f1]
      when 'soccer'
        base_urls[:soccer]
      else
        fail "Invalid API - available => :f1, :soccer"
      end
    end

    private
    def default_endpoints
      {
        soccer: "http://apifutebol.footstats.com.br/api",
        f1:     "http://apicorrida.footstats.com.br/api"
      }
    end
  end
end

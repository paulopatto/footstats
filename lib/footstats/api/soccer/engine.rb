module Footstats
  module Api
    module Soccer
      class Engine
        include Footstats::ApiEngineInterface

        def name
          "soccer"
        end

        def path
          'soccer'
        end

        def default_endpoint
          "http://apifutebol.footstats.com.br/api"
        end
      end
    end
  end
end

Footstats::ApiRegister.register(Footstats::Api::Soccer::Engine.new)

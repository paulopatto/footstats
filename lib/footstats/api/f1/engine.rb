module Footstats
  module Api
    module F1
      class Engine
        include Footstats::ApiEngineInterface

        def name
          "f1"
        end

        def default_endpoint
          "http://apicorrida.footstats.com.br/api"
        end
      end
    end
  end
end

Footstats::ApiRegister.register(Footstats::Api::F1::Engine.new)

module Footstats
  module Api
    module F1
      class Base
        protected
        def self.request(method, params = {})
          response = Footstats::Request.get(:f1, method, params)
          JSON.parse(response.body)
        end
      end
    end
  end
end

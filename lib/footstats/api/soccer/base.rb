module Footstats
  module Api
    module Soccer
      class Base
        protected
        def self.request(method, params = {})
          response = Footstats::Request.get(:soccer, method, params)
          JSON.parse(response.body)
        end
      end
    end
  end
end

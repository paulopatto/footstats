require 'footstats/request/request_racing'

module Footstats
  module Api
    module Racing
      class << self
        def new
          @request = Footstats::Request::RequestRacing
        end

        def drivers
          @request.drivers
        end

        def teams
          @request.teams
        end

        def gps
          @request.gps
        end
      end
    end
  end
end

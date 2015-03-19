require 'ostruct'
module Footstats
  module ApiEngineInterface
    def name; end
    def default_endpoint; end
    def path
      fail 'NotImplementedMethod'
    end
  end
end

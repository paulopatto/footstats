require 'httparty'

module Footstats
  module Request
    class Base
      include HTTParty

      protected
      def self.request( method = "", api = "", params={} )
        params.merge!({ token: ENV['FOOTSTATS_TOKEN'] })

        JSON.parse(get("#{api}/#{method}", { query: params }).body)
      end
    end
  end
end

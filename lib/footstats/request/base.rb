require 'httparty'

module Footstats
  module Request
    class Base
      include HTTParty
      TOKEN = ENV['FOOTSTATS_TOKEN']

      protected
      def self.request( method = "", api = "", params={} )
        params.merge({ token: TOKEN })

        JSON.parse(get("#{api}/#{method}", { query: params }).body)
      end
    end
  end
end

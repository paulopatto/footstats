require 'footstats/request/auth'

module Footstats
  class Client
    attr :auth

    def racing
      require 'footstats/api/racing'
      Footstats::Api::Racing.new
    end

    def soccer
      require 'footstats/api/soccer'
      Footstats::Api::Racing.new
    end
  end
end

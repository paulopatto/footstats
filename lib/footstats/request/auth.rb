module Footstats
  module Request
    class Auth
      attr :user,
        :password,
        :token

      def initialize(options = {})
        @token = options[:token]
      end
    end
  end
end

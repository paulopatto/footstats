module Footstats
  module Request
    require 'typhoeus'
    extend self

    def get(api, method, params = {})

      url = URI("#{Footstats.get_endpoint(api)}#{method}")
      url.query = [url.query, build_params(params)].compact.join("&")

      Typhoeus::Request.new(
        url,
        method: :get,
        headers: headers,
        verbose: (Footstats.verbose) ? true : false
      ).run
    end

    private
    def build_params(params)
      params[:Token] = Footstats.token
      params.collect {|key, value| "#{key}=#{value}" }.compact.join("&")
    end

    def headers
      {
        "Content-Type" => 'application/json',
        "User-Agent" => "GEM Footstats - version: #{Footstats::VERSION}"
      }
    end
  end
end

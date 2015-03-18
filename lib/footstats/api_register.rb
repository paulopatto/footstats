module Footstats
  class ApiRegister
    @@apis = []

    def self.register(api)
      load_api_dir(api.path)
      register_endpoint(api)

      @@apis.push(api)
    end

    def self.available_api
      apis = {}
      @@apis.collect { |api| apis[api.name.to_sym] = api }
      return apis.keys
    end

    def self.get_api(name)
      name = name.to_s if name.class == Symbol

      name && @@apis.find do |api|
        api.name.downcase == name.downcase
      end
    end

    private
    def self.load_api_dir(dir_name)
      Dir["./lib/footstats/api/#{dir_name}/**/*.rb"].each do |file|
        require file
      end
    end

    def self.register_endpoint(api)
      Footstats.configure do |config|
        config.endpoints[api.name.downcase.to_sym] = api.default_endpoint
      end
    end
  end
end

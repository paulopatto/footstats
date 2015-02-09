module Footstats
  class Resource
    @@fields = {}

    def initialize(attributes={})
      attributes.each do |attr_name, value|
        if @@fields.include? attr_name.to_sym
          send("#{@@fields[attr_name.to_sym]}=", value)
        end
      end
    end

    def self.field(internal_key, external_key)
      @@fields[external_key] = internal_key

      attr_accessor internal_key
    end

  end
end

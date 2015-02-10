module Footstats
  class Resource
    def initialize(attributes={})
      attributes.each do |attr_name, value|
        if self.class.fields.include? attr_name.to_sym
          send("#{self.class.fields[attr_name.to_sym]}=", value)
        end
      end
    end

    def self.fields
      @fields ||= {}
    end

    def self.field(internal_key, external_key)
      attr_accessor internal_key
      fields[external_key] = internal_key unless fields.include? external_key
    end
  end
end

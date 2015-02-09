require 'spec_helper'
require './lib/footstats/resource'

describe Footstats::Resource do
  subject { described_class }

  describe ".field" do
    before do
      subject.field(:test, 'Test')
    end

    it "adds given attribute a reader" do
      expect(described_class.new).to be_respond_to :test
    end

    it "adds given attribute a writer" do
      expect(described_class.new).to be_respond_to :test=
    end
  end

  describe ".new" do
    context "when sends pt-br attributes" do
      let(:name) { "Bruce Wayne" }
      let(:resource) { subject.new({"Nome" => name}) }

      before do
        subject.field :name, :Nome
      end

      it "transforms hash key Name in attr name" do
        expect(resource).to be_respond_to :name
      end

      it "puts value of key Name in attr name" do
        expect(resource.name).to eq name
      end
    end
  end
end

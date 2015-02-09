require 'spec_helper'
require './lib/footstats/racing/driver'

describe Footstats::Racing::Driver do
  subject { described_class }

  describe ".new" do
    let (:attributes) do
      {
        Nome: "Lewis Hamilton",
        Nascimento: "08/03/1987",
        Vitorias: "38"
      }
    end

    let(:driver) { subject.new(attributes) }

    it "sets correct name attribute" do
      exepct(driver.name).to_not be_nil
      expect(driver.name).to eq("Lewis Hamilton")
    end

    it "doesn't set incorrect attr" do
      expect(driver).to_not be_respond_to(:Nome)
    end
  end
end

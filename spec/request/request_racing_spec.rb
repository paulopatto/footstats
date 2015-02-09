require './lib/footstats/request/request_racing'

describe Footstats::Request::RequestRacing do
  describe ".drivers" do
    subject { described_class.drivers }

    it "list all drivers as collection :array" do
      expect(subject).to be_kind_of(Array)
    end

    it "list all drivers as collection Array<Driver>" do
      expect(subject.first).to be_kind_of(Footstats::Racing::Driver)
    end
  end

  describe ".teams" do
    subject { described_class.teams }

    it "list all teams as collection Array<Team>" do
      expect(subject.first).to be_kind_of(Footstats::Racing::Team)
    end
  end
end

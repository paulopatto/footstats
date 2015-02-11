require 'spec_helper'

describe Footstats::Client do
  describe "#initialize" do

    let(:token) { "abcd1234"}

    subject { described_class.new( {token: token} ) }

    it '' do
      expect(subject.auth).to_not be_nil
    end

    it '' do
      expect(subject.auth.token).to eq(token)
    end
  end
end

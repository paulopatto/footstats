require 'spec_helper'

RSpec.shared_examples "a configuration" do
  it { is_expected.to be_respond_to( :token ) }
  it { is_expected.to be_respond_to( :token= ) }

  it { is_expected.to be_respond_to( :base_url ) }
  it { is_expected.to be_respond_to( :base_url= ) }
end

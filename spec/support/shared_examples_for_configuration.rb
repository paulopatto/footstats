require 'spec_helper'

RSpec.shared_examples "a configuration" do
  it { is_expected.to be_respond_to( :token ) }
  it { is_expected.to be_respond_to( :token= ) }

  it { is_expected.to be_respond_to( :endpoints ) }
  it { is_expected.to be_respond_to( :verbose ) }
  it { is_expected.to be_respond_to( :lang ) }
end

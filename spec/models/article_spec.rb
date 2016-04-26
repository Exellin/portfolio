require 'spec_helper'

describe Article do
  it "has a valid factory" do
    expect(FactoryGirl.create(:article)).to be_valid
  end
end
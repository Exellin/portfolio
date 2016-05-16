require 'spec_helper'

describe Article do
  it "has a valid factory" do
    expect(FactoryGirl.build(:article)).to be_valid
  end
  it "is invalid without a title" do
    expect(FactoryGirl.build(:article, title: nil)).not_to be_valid
  end
  it "is invalid without a body" do
    expect(FactoryGirl.build(:article, body: nil)).not_to be_valid
  end
end
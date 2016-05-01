require 'spec_helper'

describe "New Article" do
  it "can't be accessed without admin privileges" do
    user = FactoryGirl.create(:user)
    visit '/users/sign_in'
    fill_in('Email', :with => user.email)
    fill_in('Password', :with => user.password)
    click_button("Log in")
    visit '/blog/new'
    expect(page).to_not have_content('New Article')
  end

  it "can be accessed with admin privileges" do
    admin = FactoryGirl.create(:admin)
    visit '/users/sign_in'
    fill_in('Email', :with => admin.email)
    fill_in('Password', :with => admin.password)
    click_button("Log in")
    visit '/blog/new'
    expect(page).to have_content('New Article')
  end
end

require 'spec_helper'

describe "New user" do
  it "signs up" do
    visit '/users/sign_up'
    fill_in('Email', :with => 'test@example.com')
    fill_in('Password', :with => 'password')
    fill_in('Password confirmation', :with => 'password')
    click_button('Sign up')
    expect(page).to have_content('You have successfully signed up')
  end
end

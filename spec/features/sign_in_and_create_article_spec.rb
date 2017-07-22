require 'spec_helper'

describe "New Article" do
  let(:user) { FactoryGirl.create(:user) }
  let(:admin) { FactoryGirl.create(:admin) }
  let(:article) { FactoryGirl.create(:article, user_id: admin.id) }

  it "can't be accessed without admin privileges" do
    visit '/users/sign_in'
    fill_in('Email', with: user.email)
    fill_in('Password', with: user.password)
    click_button("Log in")
    visit '/blog/new'
    expect(page).to_not have_content('New Article')
  end

  it "can be accessed and made with an admin" do
    visit '/users/sign_in'
    fill_in('Email', with: admin.email)
    fill_in('Password', with: admin.password)
    click_button("Log in")
    visit '/blog/new'
    expect(page).to have_content('New Article')
    fill_in('Title', with: article.title)
    fill_in('Body', with: article.body)
    click_button("Create Article")
    expect(page).to have_content(article.title)
    expect(article.user_id).to eq(admin.id)
  end
end

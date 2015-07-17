require "rails_helper"

describe "add comment" do
  it "adds a new comment to a post", js: true do
    admin = FactoryGirl.create(:admin)
    login_as(admin, :scope => :admin)
    post = FactoryGirl.create(:post)
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit '/'
    click_link('Blog', match: :first)
    click_on 'Add a Post'
    expect(page).to have_content 'I love Rails'
    visit '/'
    click_link('Blog', match: :first)
    click_on 'I love Rails'
    click_on 'Add a Comment'
    fill_in 'Comment', :with => 'Great post'
    click_on 'Create Comment'
    expect(page).to have_content 'Great post'
  end

end

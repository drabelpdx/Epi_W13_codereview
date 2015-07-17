require "rails_helper"

describe "add project" do
  it "adds a new project to category" do
    admin = FactoryGirl.create(:admin)
    login_as(admin, :scope => :admin)
    category = FactoryGirl.create(:category)
    visit '/'
    click_on 'Add a Category'
    click_link('Rails', match: :first)
    click_on 'Add a Project'
    fill_in 'Project Name', with: 'pizza'
    fill_in 'Description of Project', with: 'it has pepperoni'
    fill_in 'Link to GitHub', with: 'git_something'
    click_on 'Create Project'

    expect(page).to have_content 'pizza'
  end

  it "gives error when no name is entered" do
    admin = FactoryGirl.create(:admin)
    login_as(admin, :scope => :admin)
    category = FactoryGirl.create(:category)
    visit '/'
    click_on 'Add a Category'
    click_link('Rails', match: :first)
    click_on 'Add a Project'
    fill_in 'Project Name', with: ''
    fill_in 'Description of Project', with: ''
    fill_in 'Link to GitHub', with: ''
    click_on 'Create Project'
   expect(page).to have_content 'errors'
 end

end

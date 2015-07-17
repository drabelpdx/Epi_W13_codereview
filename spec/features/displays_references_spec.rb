require "rails_helper"

describe "display references" do
  it "displays references when Professional References link is clicked" do
    visit '/'
    click_on 'Professional References'
    expect(page).to have_content 'Ref 1'
  end

  it "hides the references link is clicked again" do
    visit '/'
    click_on 'Professional References'
    expect(page).to have_content 'Ref 1'
    click_on 'Close'
    expect(page).to have_content 'About Me'
  end

end

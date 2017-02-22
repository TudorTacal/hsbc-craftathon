require 'rails_helper'


feature "Projects" do
  before do
    visit '/'
    click_link "Sign up"
    fill_in "Email", with: "test@hsbc.com"
    fill_in "Password", with: "123456"
    fill_in "Password confirmation", with: "123456"
    fill_in "Name" ,with: "Stuart"
    fill_in "Job description", with: "Junior Dev"
    click_button "Sign up"
  end
  context "when adding a new project" do
    scenario "it saves it in the database with title and description" do
      click_link "Add employee project"
      fill_in "Title", with: "HSBC cratftathon"
      fill_in "Description", with: "Cool teamwork project with HSBC"
      click_button "Submit"
      expect(page).to have_content "HSBC cratftathon" 
    end
  end
end

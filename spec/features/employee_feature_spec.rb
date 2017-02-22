require 'rails_helper'

feature 'Employees' do
  context 'are displayed' do
    scenario 'after sign up' do
      visit '/'
      click_link "Sign up"
      fill_in "Email", with: "test@hsbc.com"
      fill_in "Password", with: "123456"
      fill_in "Password confirmation", with: "123456"
      fill_in "Name" ,with: "Stuart"
      fill_in "Job description", with: "Junior Dev"
      click_button "Sign up"
      expect(page).to have_content("Stuart")
      expect(page).to have_content("Junior Dev")
    end
  end

    scenario 'can add a project' do
      visit '/'
      click_link 'Sign up'
      fill_in "Email", with: "test@hsbc.com"
      fill_in "Password", with: "123456"
      fill_in "Password confirmation", with: "123456"
      fill_in "Name" ,with: "Stuart"
      fill_in "Job description", with: "Junior Dev"
      click_button "Sign up"
      save_and_open_page
      expect(page).to have_link("Add employee project")
    end


end

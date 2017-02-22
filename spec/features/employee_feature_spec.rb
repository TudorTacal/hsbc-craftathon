require 'rails_helper'

feature 'Employees' do
  context 'are signed up' do
    scenario 'after sign up' do
      visit '/'
      sign_up
      expect(page).to have_content("test@hsbc.com")
      # expect(page).to have_content("Junior Dev")
    end

    # scenario 'can add a project' do
    #   visit '/'
    #   click_link 'Sign up'
    #   fill_in "Email", with: "test@hsbc.com"
    #   fill_in "Password", with: "123456"
    #   fill_in "Password confirmation", with: "123456"
    #   fill_in "Name" ,with: "Stuart"
    #   fill_in "Job description", with: "Junior Dev"
    #   click_button "Sign up"
    #   expect(page).to have_link("Add employee project")
    # end
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
    expect(page).to have_link("Add employee project")
  end

  context 'user can click through to own page' do
    scenario 'by clicking on show employee link' do
      visit '/'
      sign_up
      click_link 'View employee'
      # user_id = page.find(".user")[:id]
      # puts current_path
      expect(page).to have_content("test@hsbc.com")
    end
  end

end

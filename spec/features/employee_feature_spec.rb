require 'rails_helper'

feature 'employees' do

  context 'there are no employees' do
    scenario 'Notification of no employees' do
      visit '/employees'
      expect(page).to have_content("No employees currently listed")
    end

    scenario 'option to add employee visible' do
      visit '/employees'
      expect(page).to have_link("Add employee profile")
    end
  end
end

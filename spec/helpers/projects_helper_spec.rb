require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the ProjectsHelper. For example:
#
# describe ProjectsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ProjectsHelper, type: :helper do
  pending "add some examples to (or delete) #{__FILE__}"
end

def add_project
  click_link "Add employee project"
  fill_in "Title", with: "HSBC cratftathon"
  fill_in "Description", with: "Cool teamwork project with HSBC"
  click_button "Submit"
  expect(page).to have_content "HSBC cratftathon"
end

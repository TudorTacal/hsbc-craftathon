
def sign_up
  click_link "Sign up"
  fill_in "Email", with: "test@hsbc.com"
  fill_in "Password", with: "123456"
  fill_in "Password confirmation", with: "123456"
  fill_in "Name" ,with: "Stuart"
  fill_in "Job description", with: "Junior Dev"
  click_button "Sign up"
end

def add_project
  click_link "Add employee project"
  fill_in "Title", with: "HSBC cratftathon"
  fill_in "Description", with: "Cool teamwork project with HSBC"
  click_button "Submit"
end

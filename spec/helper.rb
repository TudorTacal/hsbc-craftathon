
def sign_up
  click_link "Sign up"
  fill_in "Email", with: "test@hsbc.com"
  fill_in "Password", with: "123456"
  fill_in "Password confirmation", with: "123456"
  fill_in "Name" ,with: "Stuart"
  fill_in "Job description", with: "Junior Dev"
  click_button "Sign up"
end

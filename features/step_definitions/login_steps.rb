Given /I log in as "(.*)" with password "(.*)"/ do |login, password|
  fill_in "Login", :with => login
  fill_in "Password", :with => password
  uncheck "Remember me"
  click_button "Sign in"
end

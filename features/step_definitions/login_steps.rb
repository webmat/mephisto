Given /^I log in as "(.*)" with password "(.*)"$/ do |login, password|
  fill_in "Login", :with => login
  fill_in "Password", :with => password
  uncheck "Remember me"
  click_button "Sign in"
end

When /^I log out$/ do
  click_link('Logout')
end

Then /^I should be able to log in as "(.*)" with password "(.*)"$/ do
    |login, password|
  When "I try to access the overview page"
  And  "I log in as \"#{login}\" with password \"#{password}\""
  Then "I should see the overview page"
end

Then /^I should not be able to log in as "(.*)" with password "(.*)"$/ do
    |login, password|
  When "I try to access the overview page"
  And  "I log in as \"#{login}\" with password \"#{password}\""
  Then "I should see \"Could not log you in.\""
end

Then /^I should be logged in$/ do
  When "I try to access the overview page"
  Then "I should see the overview page"
end

Then /^I should not be logged in$/ do
  When "I try to access the overview page"
  Then "I should see \"Login\""
  And  "I should see \"Password\""
end


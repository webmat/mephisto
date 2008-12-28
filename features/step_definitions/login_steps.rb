class Cucumber::Rails::World
  def log_in_as login, password
    fill_in "Login", :with => login
    fill_in "Password", :with => password
    uncheck "Remember me"
    click_button "Sign in"
  end

  def should_see_could_not_log_you_in
    response.body.should =~ /Could not log you in./m
  end
end

Given /I log in as "(.*)" with password "(.*)"/ do |login, password|
  log_in_as login, password
end

When /^I log out$/ do
  click_link('Logout')
end

Then /^I should be able to log in as "(.*)" with password "(.*)"$/ do
    |login, password|
  visit_overview_page
  log_in_as login, password
  should_see_overview_page
end

Then /^I should not be able to log in as "(.*)" with password "(.*)"$/ do
    |login, password|
  visit_overview_page
  log_in_as login, password
  should_see_could_not_log_you_in
end

Then /^I should be logged in$/ do
  visit_overview_page
  should_see_overview_page
end

Then /^I should not be logged in$/ do
  visit_overview_page
  response.body.should =~ /Login/m
  response.body.should =~ /Password/m
end


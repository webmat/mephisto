Given /I try to access the overview page/ do
  visit '/admin'
end

Then /I should see the overview page/ do
  response.should contain("Create new article")
  response.should contain("Recent activity")
end

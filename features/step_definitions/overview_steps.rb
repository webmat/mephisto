Given /I try to access the overview page/ do
  visit '/admin'
end

Then /I should see the overview page/ do
  Then "I should see \"Create new article\""
  And "I should see \"Recent activity\""
end

Given /I try to access the overview page/ do
  visit '/admin'
end

Then /I should see the overview page/ do
  response.body.should =~ /Create new article/m
  response.body.should =~ /Recent activity/m
end

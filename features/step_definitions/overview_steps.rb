class Cucumber::Rails::World
  def visit_overview_page
    visit '/admin'
  end

  def should_see_overview_page
    response.body.should =~ /Create new article/m
    response.body.should =~ /Recent activity/m
  end
end

Given /I try to access the overview page/ do
  visit_overview_page
end

Then /I should see the overview page/ do
  should_see_overview_page
end

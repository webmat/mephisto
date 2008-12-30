Then /^show me the page$/ do
  save_and_open_page
end

Then /^run "(.*)"$/ do |code|
  instance_eval code
end


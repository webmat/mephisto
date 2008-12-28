Before do
  Rails.env.should == 'test'
  ActionMailer::Base.deliveries.clear
end

Then /^an e\-mail should be sent to "(.*)"$/ do |to|
  email = ActionMailer::Base.deliveries.first
  email.to.should == [to]
end

When /^I follow the link in the e\-mail$/ do
  email = ActionMailer::Base.deliveries.first

  email.body =~ %r{(http://[^ ]*)}
  url = $1
  url.should_not be_nil

  visit url
end

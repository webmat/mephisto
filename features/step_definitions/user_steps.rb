Given /a global administator named "(.*)" with password "(.*)"/ do |login, pw|
  @user = User.make(:login => login, :admin => true,
                    :password => pw, :password_confirmation => pw)
end

Given /^a global administator named "(.*)" with email "(.*)"$/ do |login, email|
  @user = User.make(:login => login, :admin => true, :email => email)
end

Given /^that I am logged in as a contributor$/ do
  membership = Membership.make
  @site = membership.site
  @user = membership.user
  
  When "I try to access the overview page"
  And  "I log in as \"#{@user.login}\" with password \"password\""
end

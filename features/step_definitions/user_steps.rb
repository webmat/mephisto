Given /a global administator named "(.*)" with password "(.*)"/ do |login, pw|
  @user = User.make(:login => login, :admin => true,
                    :password => pw, :password_confirmation => pw)
end

Given /^a global administator named "(.*)" with email "(.*)"$/ do |login, email|
  @user = User.make(:login => login, :admin => true, :email => email)
end

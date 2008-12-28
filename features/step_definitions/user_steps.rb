Given /a global administator named "(.*)" with password "(.*)"/ do |login, pw|
  @user = User.make(:login => login, :admin => true,
                    :password => pw, :password_confirmation => pw)
end

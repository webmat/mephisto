Feature: Logging in and out
  In order to preserve my good reputation
  As the owner of a Mephisto site
  I want to keep random strangers from administering my site
  
  Scenario: Log in with valid name and password
    Given a site
    And a global administator named "sarah" with password "password"
    Then I should be able to log in as "sarah" with password "password"

  Scenario: Log in with an invalid name
    Given a site
    And a global administator named "sarah" with password "password"
    Then I should not be able to log in as "invalid" with password "password"

  Scenario: Log in with an invalid password
    Given a site
    And a global administator named "sarah" with password "password"
    Then I should not be able to log in as "sarah" with password "invalid"

  Scenario: Reset a forgotten password
    Given a site
    And a global administator named "sarah" with email "sarah@example.com"

    When I try to access the overview page
    And I follow "reset password"
    And I fill in "email" with "sarah@example.com"
    And I press "Reset"

    Then an e-mail should be sent to "sarah@example.com"
    And I should see "A temporary login email has been sent"
    And I should not be logged in

    When I follow the link in the e-mail
    And I fill in "Password" with "newpass"
    And I fill in "Password confirmation" with "newpass"
    And I press "Save my profile"
    Then I should see "Profile updated"
    And I should be logged in

    When I log out
    Then I should be able to log in as "sarah" with password "newpass"

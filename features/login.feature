Feature: Logging in and out
  
  Scenario: Log in with valid name and password
    Given a site
    And a global administator named "sarah" with password "password"
    When I try to access the admin page
    Then I should see "Login"
    When I fill in "Login" with "sarah"
    And I fill in "Password" with "password"
    And I uncheck "Remember me"
    And I press "Sign in"
    Then I should see "Create new article"
    And I should see "Recent activity"
    
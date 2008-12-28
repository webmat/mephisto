Feature: Logging in and out
  
  Scenario: Log in with valid name and password
    Given a site
    And a global administator named "sarah" with password "password"

    When I try to access the overview page
    And I log in as "sarah" with password "password"
    Then I should see the overview page

  Scenario: Log in with an invalid name
    Given a site
    And a global administator named "sarah" with password "password"

    When I try to access the overview page
    And I log in as "sarah" with password "invalid"
    Then I should see "Could not log you in."    

  Scenario: Log in with an invalid password
    Given a site
    And a global administator named "sarah" with password "password"

    When I try to access the overview page
    And I log in as "invalid" with password "password"
    Then I should see "Could not log you in."



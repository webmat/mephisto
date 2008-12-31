Feature: Create a new article

  Scenario: Publishing immediately
    Given that I am logged in as a contributor
    And I am editing a new article

    When I fill in "Title" with "My article"
    And I fill in "Write your article" with "My content"
    And I press "Save Article"
    Then I should see "Your article was saved"

    When I follow "Website"
    Then I should see "My article"
    And I should see "My content"
   
  Scenario: Saving a draft
    Given that I am logged in as a contributor
    And I am editing a new article

    When I fill in "Title" with "My article"
    And I fill in "Write your article" with "My content"
    And I check "Yes, save this article as a draft"
    And I press "Save Article"
    Then I should see "Your article was saved"

    When I follow "Website"
    Then I should not see "My article"


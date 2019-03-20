Feature: Create and Edit categories
  As a blog administrator
  In order to create and edit blog categories
  I want to be able to add and edit categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create categories
    Given I am on the new categories page
    When I fill in "category_name" with "Some_category"
    And I fill in "category_keywords" with "Some_keyword"
    And I fill in "category_permalink" with "Some_permalink"
    And I fill in "category_description" with "Some_description"
    And I press "Save"
    Then I should see "Category was successfully saved."
    
  Scenario: Successfully edit categories
    Given I am on the new categories page
    When I fill in "category_name" with "Some_category"
    And I fill in "category_keywords" with "Some_keyword"
    And I fill in "category_permalink" with "Some_permalink"
    And I fill in "category_description" with "Some_description"
    And I press "Save"
    Then I should see "Category was successfully saved."
    
    When I follow "Some_category"
    
    Then I should see "Some_category"
    Then I should see "Some_keyword"
    Then I should see "Some_permalink"
    Then I should see "Some_description"
    
    When I fill in "category_name" with "Other_category"
    And I fill in "category_keywords" with "Other_keyword"
    And I fill in "category_permalink" with "Other_permalink"
    And I fill in "category_description" with "Other_description"
    And I press "Save"
    Then I should see "Category was successfully saved."
    Then I should see "Other_category"
    Then I should see "Other_keyword"
    Then I should see "Other_permalink"
    Then I should see "Other_description"
    

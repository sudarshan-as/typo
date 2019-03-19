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
    And I fill in "category_permalink" with "BS"
    And I fill in "category_description" with "descrip"
    And I press "Save"
    Then I should see "Category was successfully saved."

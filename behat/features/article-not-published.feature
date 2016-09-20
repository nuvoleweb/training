@api
Feature: Article management
  In order to properly manage article publication workflow
  As a site administrator
  I want to be sure that articles are not published when I create them

  Scenario: Articles are not published by default

    Given I am logged in as a user with the "administrator" role
    And I am on "node/add/article"
    Then I should see the button "Save as unpublished"

    Given I fill in "Title" with "My first article"
    And I press the "Save as unpublished" button
    When I am on "admin/content"
    Then I should see "Unpublished" in the "My first article" row

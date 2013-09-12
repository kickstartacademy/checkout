Feature: Discounts

  Background:
    Given the price of a Cucumber is 1 EUR
    And we have a 2-for-1 discount on Cucumbers

  Scenario: Scan one item
    When I scan 1 Cucumber
    Then the total should be 1 EUR

  Scenario: Get the discount
    When I scan 2 Cucumbers
    Then the total should be 1 EUR

  Scenario: Scan multiple items
    When I scan 3 Cucumbers
    Then the total should be 2 EUR

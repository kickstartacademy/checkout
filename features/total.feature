Feature: Total

  Background:
    Given the price of a Cucumber is 1 EUR
    And the price of a Tomato is 3 EUR

  Scenario: Scan one item
    When I scan 1 Cucumber
    Then the total should be 1 EUR

  Scenario: Scan multiple items
    When I scan 2 Cucumbers
    Then the total should be 2 EUR

  Scenario: Scan different items
    When I scan 1 Cucumber
    And I scan 1 Tomato
    Then the total should be 4 EUR

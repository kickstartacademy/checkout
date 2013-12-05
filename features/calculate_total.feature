Feature: Calculate Total

  As a store owner
  I want to calculate the total 
  So that my nephew Steven does not make a mistake
  
  Acceptance Criteria:
  
  - We only sell cucumber
  - We only sell cucumbers by unit price
  - We only sell whole cucumbers
  
  Background:
    Given the price of a cucumber is 10p
  
  Scenario: The one where the customer has one cucumber
    When the customer purchases 1 cucumber
    Then the total is 10p
    
  Scenario: The one where the customer buys several cucumbers
    When the customer purchases 2 cucumbers
    Then the total is 20p
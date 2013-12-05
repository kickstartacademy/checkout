Feature: Calculate Change

  As a store owner
  I want to calculate the change
  So that my nephew Steven does not have to think (he is not very bright)
  
  Acceptance Criteria:
  
  - We only sell cucumbers
  - Change must be the difference between amount given by customer and total due
  - Don't care about how much in cash register at the moment

  Scenario: Customer gets change
    Given the total is 80p
    And the customer pays 100p
    Then the change due is 20p
    
  Scenario: Customer gives right amount
  
  Scenario: Customer gives too little money
    Given the total is 50p
    And the customer pays 30p
    Then the system throws an error

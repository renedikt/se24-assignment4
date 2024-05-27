Feature: InsertIntoListAcceptanceTest
  This feature inserts an element into a list in a sorted order.

  Scenario: Inserting two elements into an empty list with the second element being smaller than the first
    Given an empty list
    When I insert an element with value 1.4
    And I insert an element with value 1.2
    Then the list should contain 2 elements
    And the list should contain the elements in the following order:
      | 1.2 |
      | 1.4 |

  Scenario: Inserting two elements into an empty list with the second element being greater than the first
    Given an empty list
    When I insert an element with value 1.2
    And I insert an element with value 1.4
    Then the list should contain 2 elements
    And the list should contain the elements in the following order:
      | 1.2 |
      | 1.4 |

  Scenario: Inserting an element into a preexisting list with the element being in the middle
    Given a list containing the following elements:
      | 1.2 |
      | 1.4 |
      | 1.6 |
    When I insert an element with value 1.3
    Then the list should contain 4 elements
    And the list should contain the elements in the following order:
      | 1.2 |
      | 1.3 |
      | 1.4 |
      | 1.6 |
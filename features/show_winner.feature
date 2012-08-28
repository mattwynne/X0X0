Feature: Show winner

  When the game has a winner, display it!

  Scenario: X wins
    Given a board like this:
      | X | O | O |
      |   | X |   |
      |   |   |   |
    When X plays at row 2, column 2
    Then I should see that player X is the winner

  Scenario: 0 wins
    Given a board like this:
      | X | X | 0 |
      | X | 0 |   |
      |   |   |   |
    When 0 plays at row 2, column 0
    Then I should see that player 0 is the winner

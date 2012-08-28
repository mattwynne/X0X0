Feature: Show next turn

  To prevent arguments, the game should always show
  the identity of the player whose turn it is next.

  Scenario: Nobody has played yet
    Given an empty board
    Then I should see that player X has the next turn

  Scenario: X has had one go
    Given a board like this:
      | X |   |   |
      |   |   |   |
      |   |   |   |
    Then I should see that player 0 has the next turn

Feature: Illegal move

  In order to prevent arguments, the game should show a 
  warning if a player makes an illegal move

  Illegal moves include:
  
    - trying to take two consecutive turns
    - taking a turn on a space that's already filled

  Scenario: Player tries to take two turns
    Given a board like this:
      | X |   |   |
      |   |   |   |
      |   |   |   |
    When X plays at row 1, column 1
    Then I should see that an illegal move has been made

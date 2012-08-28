Given /^an empty board$/ do
end

Given /^a board like this:$/ do |table|
  table.raw.each_with_index do |row, row_index|
    row.each_with_index do |player_id, col_index|
      play(player_id, row_index, col_index)
    end
  end
end

When /^(X|0) plays at row (\d+), column (\d+)$/ do |player_id, row, column|
  play(player_id, row, column)
end

Then /^I should see that player (X|0) has the next turn$/ do |player_id|
  next_player.should == player_id
end

Then /^I should see that player (X|0) is the winner$/ do |player_id|
  winner.should == player_id
end

module BoardDriver
  def play(player_id, row, column)
    find("input#row-#{row}-col-#{column}").set(player_id)
  end

  def next_player
    find('.next-player').text
  end

  def winner
    find('.winner').text
  end
end

World(BoardDriver)

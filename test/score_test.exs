defmodule ScoreTest do
  use ExUnit.Case
  alias Guess.Score
  
  test "Counts red pegs" do
    expected = 2
    actual = Score.reds([1, 2, 3, 4], [1, 2, 5, 6])
    
    assert expected == actual
  end
  
  test "Counts white pegs" do
    expected = 2
    actual = Score.whites([1, 2, 3, 4], [1, 2, 4, 3])
    
    assert expected == actual
    

    expected = 4
    actual = Score.whites([1, 2, 3, 4], [4, 3, 2, 1])
    
    assert expected == actual
  end
end

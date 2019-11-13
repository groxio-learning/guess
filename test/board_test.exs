defmodule BoardTest do
  use ExUnit.Case
  alias Guess.Board

  test "default struct has guesses and secret" do
    keys = Board.__struct__ |> Map.keys
    
    assert :guesses in keys
    assert :secret in keys
  end
  
  test "makes move" do
    expected = [[1, 2, 3, 4]]
    
    actual = 
      Board.new
      |> Board.move([1, 2, 3, 4])
      |> Map.get(:guesses)
      
    assert actual == expected
  end
  
  test "detects game won" do
    expected = true
    actual = 
      Board.new
      |> Board.move([1, 2, 4, 3])
      |> Board.move([1, 2, 3, 4])
      |> Board.won?
      
    assert actual == expected
  end
end

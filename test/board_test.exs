defmodule BoardTest do
  use ExUnit.Case
  alias Guess.Board

  test "default struct has guesses and secret" do
    keys = Board.__struct__ |> Map.keys
    
    assert :guesses in keys
    assert :secret in keys
  end
end

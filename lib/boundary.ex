defmodule Guess.Boundary do
  def random_guess() do
    (1..8)
    |> Enum.shuffle
    |> Enum.take(4)
  end 
end
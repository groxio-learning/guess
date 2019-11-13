defmodule Guess.Score do
  def score(guess, answer) do
    %{
      reds: reds(guess, answer), 
      whites: whites(guess, answer)
    }
  end
  
  def reds(guess, answer) do
    guess 
    |> Enum.zip(answer) 
    |> Enum.filter(fn({x, y}) -> 
      x == y end
    ) 
    |> Enum.count
  end
  
  def width(answer) do
    length(answer)
  end
  
  def whites(guess, answer) do
    width(answer) - reds(guess, answer) - misses(guess, answer)
  end
  
  def misses(guess, answer) do
    (answer -- guess)
    |> length
  end
end
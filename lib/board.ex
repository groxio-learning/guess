defmodule Guess.Board do
  defstruct secret: [1, 2, 3, 4], guesses: []
  alias Guess.Score
  
  def new(args \\ []) do
    __MODULE__.__struct__(args)
    
  end
    
  def move(board, guess) do
    Map.put(board, :guesses, [guess|board.guesses])
  end
  
  def won?(%{guesses: [guess|_], secret: secret}) do
    winning_score? Score.score(guess, secret)
  end
  def won?(_), do: false
  
  def winning_score?(%{reds: 4}), do: true
  def winning_score?(_), do: false
  
end
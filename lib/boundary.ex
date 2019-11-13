defmodule Guess.Boundary do
  alias Guess.{Board, Score}
  
  def random_guess() do
    (1..8)
    |> Enum.shuffle
    |> Enum.take(4)
  end 
  
  def to_string(board) do
    """
    #{rows_to_string(board)}
    
    #{status_to_string(board)}
    """
  end
  
  def score_to_string(%{reds: reds, whites: whites}) do
    number_of_reds = reds || 0
    number_of_whites = whites || 0
    number_of_misses = 4 - number_of_reds - number_of_whites
    
    r = String.duplicate("r", number_of_reds)
    w = String.duplicate("w", number_of_whites)
    x = String.duplicate("x", number_of_misses)
      
    r <> w <> x
  end
  
  def rows_to_string(board) do
    Enum.map(
      Enum.reverse(board.guesses), 
      fn(guess) -> 
        score = Score.score(guess, board.secret)
        "#{guess_to_string(guess)} #{score_to_string(score)}"
      end
    )
    |> Enum.join("\n")
  end
  
  def guess_to_string(guess) do
    Enum.join(guess, "")
  end
  
  def status_to_string(board) do
    
    status_to_string(Board.won?(board), length(board.guesses))
  end
  
  def status_to_string(true=_winner, _number_of_moves) do
    "You won!"
  end
  
  def status_to_string(_, 10) do
    "You lost!"
  end
  
  def status_to_string(_, n) do
    "Moves remaining: #{10-n}"
  end
end
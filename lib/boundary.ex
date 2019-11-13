defmodule Guess.Boundary do
  alias Guess.{Board, Score}
  use GenServer
  
  # api
  
  def init(initial_game) do
    {:ok, initial_game}
  end
  
  def start_link(game) do
    GenServer.start_link(__MODULE__, game)
  end
  
  def move(pid, guess) do
    GenServer.call(pid, {:move, guess})
  end

  def status(pid) do
    GenServer.call(pid, :status)
  end
  
  def finished?(pid) do
    GenServer.call(pid, :finished)
  end
  
  # service
  
  def handle_call({:move, guess}, _from, board) do
    {:reply, :ok, Board.move(board, guess)}
  end
  
  def handle_call(:status, _from, board) do
    {:reply, render(board), board}
  end
  
  def handle_call(:finished, _from, board) do
    {:reply, Board.won?(board), board}
  end

  # Presentation
  def random_guess() do
    secret = 
      (1..8)
      |> Enum.shuffle
      |> Enum.take(4)
      [secret: secret]
  end
  
  def render(board) do
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
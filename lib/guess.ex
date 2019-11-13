defmodule Guess do
  alias Guess.{Boundary, Board}

  def start do
    initial_board = Board.new(Boundary.random_guess())
    {:ok, server} = Boundary.start_link(initial_board)
    server
  end
  
  def move(server, move) do
    :ok = Boundary.move(server, move)
  end
  
  def status(server) do
    Boundary.status(server)
  end
  
  def finished?(server) do
    Boundary.finished?(server)
  end
end

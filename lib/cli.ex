defmodule BrainGames.CLI do
  alias BrainGames.GameEngine

  def main(_args) do
    IO.puts "Welcome to the Brain Games!\n"
    name = IO.gets "May I have your name?"
    IO.puts "Hello, #{name}"
    IO.puts """
      Choose a game:
    1) Brain-even
    """

    game_number = IO.getn "Enter game number >"
    GameEngine.play(game_number)
  end
end

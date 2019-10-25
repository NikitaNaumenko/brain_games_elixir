defmodule BrainGames.CLI do
  alias BrainGames.GameEngine

  def main(_args) do
    IO.puts "Welcome to the Brain Games!\n"
    name = ExPrompt.string("May I have your name?")
    IO.puts "Hello, #{name}"
    IO.puts """
      Choose a game:
    1) Brain-even
    """

    game_number = ExPrompt.string("Enter game number >")
    GameEngine.play(game_number, name)
  end
end

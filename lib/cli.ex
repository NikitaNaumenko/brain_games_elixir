defmodule BrainGames.CLI do
  @moduledoc """
  Main CLI interface
  """

  alias BrainGames.GameEngine

  def main(_args) do
    IO.puts("Welcome to the Brain Games!\n")
    name = ExPrompt.string("May I have your name?")
    IO.puts("Hello, #{name}")

    IO.puts("""
      Choose a game:
    1) Brain-even
    2) Brain-calc
    3) Brain-greatest-common-divisor
    4) Brain-progression
    5) Brain-prime
    """)

    game_number = ExPrompt.string("Enter game number >")
    GameEngine.play(game_number, name)
  end
end

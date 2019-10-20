defmodule BrainGames.GameEngine do
  alias BrainGames.Games.Even

  @games %{ "1" => Even }
  @rounds_count 3

  def play(game_number) do
    IO.inspect game_number
    game_name = @games[game_number]
    IO.inspect game_name
    game_name.play()
    # game = String.to_existing_atom("Elixir." <> "BrainGames.Games." <> game_name)
    # play_round(game)
  end

  # def play_round(game) 
end

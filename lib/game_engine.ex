defmodule BrainGames.GameEngine do
  alias BrainGames.Games.{Even, Calc, Gcd, Progression, Prime}

  @games %{"1" => Even, "2" => Calc, "3" => Gcd, "4" => Progression, "5" => Prime}
  @rounds_count 3

  @spec play(game_number :: String.t(), user :: String.t()) :: :ok
  def play(game_number, user) do
    game = @games[game_number]
    play_round(game, user, @rounds_count)
  end

  @spec play_round(game :: module(), user :: String.t(), rounds_count :: integer()) :: :ok
  def play_round(game, user, rounds_count) when rounds_count > 0 do
    game_data = game.generate_game_data()
    task = game.get_task()
    question = game_data["question"]
    answer = game_data["answer"]

    IO.puts(task)
    IO.puts("Question: #{question}")
    user_answer = ExPrompt.string("Your answer? \n")

    if answer != user_answer do
      IO.puts("#{user_answer} is wrong answer ;( Correct answer was #{answer}\n")
      IO.puts("Let's try again #{user}\n")
    else
      IO.puts("Correct!\n")
      play_round(game, user, rounds_count - 1)
    end
  end

  def play_round(_, user, _), do: IO.puts("Congratulations, #{user}\n")
end

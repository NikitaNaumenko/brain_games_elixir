defmodule BrainGames.Games.Even do
  @moduledoc """
  "Even Check".
  The essence of the game is as follows: a random number is shown to the user.
  And he needs to answer yes if the number is even, or no if it is odd.
  """
  require Integer

  @max 100

  @spec generate_game_data() :: map()
  def generate_game_data do
    question = Enum.random(0..@max)
    answer = if Integer.is_even(question), do: "yes", else: "no"
    %{"question" => Integer.to_string(question), "answer" => answer}
  end

  @spec get_task() :: String.t()
  def get_task do
    "Answer 'yes' if number even otherwise answer 'no'."
  end
end

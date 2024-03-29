defmodule BrainGames.Games.Prime do
  @moduledoc"""
  "Is Prime Number?"
  We show the player the number. The player must determine if this is a prime number.
  """

  require Integer

  @counter 2
  @max 100

  @spec generate_game_data() :: map()
  def generate_game_data do
    question = Enum.random(0..@max)
    answer = if is_prime(question, @counter), do: "yes", else: "no"
    %{"question" => question, "answer" => answer}
  end

  @spec get_task() :: String.t()
  def get_task do
    "Answer 'yes' if given number is prime. Otherwise answer 'no'."
  end

  @spec is_prime(num :: integer(), divisor :: integer()) :: boolean()
  defp is_prime(num, divisor) do
    cond do
      divisor > div(num, 2) -> true
      rem(num, divisor) == 0 -> false
      rem(num, divisor) > 0 -> is_prime(num, divisor + 1)
      num < 2 -> true
    end
  end
end

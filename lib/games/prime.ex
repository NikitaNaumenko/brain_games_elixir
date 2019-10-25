defmodule BrainGames.Games.Prime do
  @counter 2
  require Integer

  def generate_game_data do
    question = Enum.random(0..100)
    answer = if is_prime(question, @counter), do: "yes", else: "no"
    %{"question" => question, "answer" => answer}
  end

  def get_task do
    "Answer 'yes' if given number is prime. Otherwise answer 'no'."
  end

  defp is_prime(num, divisor) do
    cond do
      divisor > div(num, 2) -> true
      rem(num, divisor) == 0 -> false
      rem(num, divisor) > 0 -> is_prime(num, divisor + 1)
      num < 2 -> true
    end
  end
end

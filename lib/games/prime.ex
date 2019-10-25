defmodule BrainGames.Games.Prime do
  @counter 2
  require Integer

  def generate_game_data do
    question = Enum.random(0..100)
    answer = if is_prime(question, @counter), do: "yes", else: "no"
    %{ "question" => question, "answer" => answer }
  end

  def get_task do
    "Answer 'yes' if given number is prime. Otherwise answer 'no'."
  end

  defp is_prime(num, divisor) when divisor <= div(num, 2) do
    cond do
      rem(num, divisor) == 0 -> false
      rem(num, divisor) > 0 -> is_prime(num ,divisor + 1)
    end
  end

  defp is_prime(_, _), do: true
end

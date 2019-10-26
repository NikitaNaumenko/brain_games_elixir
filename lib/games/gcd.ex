defmodule BrainGames.Games.Gcd do
  require Integer

  @spec generate_game_data() :: map()
  def generate_game_data do
    first = Enum.random(0..100)
    second = Enum.random(0..100)
    question = "#{first} #{second}"
    answer = find_gcd(first, second)
    %{"question" => question, "answer" => Integer.to_string(answer)}
  end

  @spec get_task() :: String.t()
  def get_task do
    "Find the greatest common divisor of given numbers."
  end

  @spec find_gcd(a :: integer(), b :: integer()) :: integer()
  defp find_gcd(a, b) when b == 0, do: a

  defp find_gcd(a, b) do
    find_gcd(b, rem(a, b))
  end
end

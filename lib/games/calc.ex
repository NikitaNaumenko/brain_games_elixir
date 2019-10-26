defmodule BrainGames.Games.Calc do
  @moduledoc """
  "Calculator".
  The essence of the game is as follows: the user is shown a random mathematical expression,
  for example 46 + 29, which must be calculated and written down the correct answer.
  """

  require Integer

  @operators ["+", "-", "*"]
  @max 100

  @spec generate_game_data() :: map()
  def generate_game_data do
    first = Enum.random(0..@max)
    second = Enum.random(0..@max)
    operator = Enum.random(@operators)

    answer =
      case operator do
        "+" -> first + second
        "-" -> first - second
        "*" -> first * second
      end

    %{"question" => "#{first} #{operator} #{second}", "answer" => Integer.to_string(answer)}
  end

  @spec get_task() :: String.t()
  def get_task do
    "What is the result of the expression?"
  end
end

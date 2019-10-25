defmodule BrainGames.Games.Calc do
  require Integer

  @operators ["+", "-", "*"]

  def generate_game_data do
    first = Enum.random(0..100)
    second = Enum.random(0..100)
    operator = Enum.random(@operators)

    answer =
      case operator do
        "+" -> first + second
        "-" -> first - second
        "*" -> first * second
      end

    %{ "question" => "#{first} #{operator} #{second}", "answer" => Integer.to_string(answer) }
  end

  def get_task do
    "What is the result of the expression?"
  end
end
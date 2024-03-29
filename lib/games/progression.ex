defmodule BrainGames.Games.Progression do
  @moduledoc"""
  "Arithmetic progression"
  We show the player a series of numbers forming an arithmetic progression, replacing any of the numbers with two points.
  The player must determine this number.
  """

  require Integer
  @length 10
  @max 100

  @spec generate_game_data() :: map()
  def generate_game_data do
    first_item = Enum.random(0..@max)
    step = Enum.random(0..@max)
    progression = get_progression(first_item, step)
    answer = Enum.random(progression)
    hidden_index = Enum.find_index(progression, fn x -> x == answer end)
    question = List.replace_at(progression, hidden_index, "..")

    %{"question" => Enum.join(question, " "), "answer" => Integer.to_string(answer)}
  end

  @spec get_task() :: String.t()
  def get_task do
    "What number is missing in the progression?"
  end

  @spec get_progression(first_item :: integer(), step :: integer()) :: [integer()]
  defp get_progression(first_item, step), do: get_progression(first_item, step, 0, [])

  @spec get_progression(first_item :: integer(), step :: integer(), counter :: integer(), any()) ::
          [integer()]
  defp get_progression(first_item, step, counter, _) do
    get_progression(step, counter + 1, [first_item + step])
  end

  @spec get_progression(integer(), counter :: integer(), acc :: [integer()]) :: [integer()]
  defp get_progression(_, counter, acc) when counter == @length, do: Enum.reverse(acc)

  defp get_progression(step, counter, [head | _] = acc) do
    get_progression(step, counter + 1, [head + step | acc])
  end
end

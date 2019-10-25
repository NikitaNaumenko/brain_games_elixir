defmodule BrainGames.Games.Progression do
  require Integer
  @length 10

  def generate_game_data do
    first_item = Enum.random(0..100)
    step = Enum.random(0..100)
    progression = get_progression(first_item, step)
    answer = Enum.random(progression)
    hidden_index = Enum.find_index(progression, fn x -> x == answer end)
    question = List.replace_at(progression, hidden_index, "..")

    %{"question" => Enum.join(question, " "), "answer" => Integer.to_string(answer)}
  end

  def get_task do
    "What number is missing in the progression?"
  end

  defp get_progression(first_item, step), do: get_progression(first_item, step, 0, [])

  defp get_progression(first_item, step, counter, _) do
    get_progression(step, counter + 1, [first_item + step])
  end

  defp get_progression(_step, counter, acc) when counter == @length, do: Enum.reverse(acc)

  defp get_progression(step, counter, [head | _] = acc) do
    get_progression(step, counter + 1, [head + step | acc])
  end
end

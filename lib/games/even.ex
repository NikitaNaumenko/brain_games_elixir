defmodule BrainGames.Games.Even do
  require Integer

  def generate_game_data do
    question = Enum.random(0..100)
    answer = if Integer.is_even(question), do: "yes", else: "no"
    %{"question" => Integer.to_string(question), "answer" => answer}
  end

  def get_task do
    "Answer 'yes' if number even otherwise answer 'no'."
  end
end

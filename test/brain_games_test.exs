defmodule BrainGamesTest do
  use ExUnit.Case
  doctest BrainGames

  test "greets the world" do
    assert BrainGames.hello() == :world
  end
end

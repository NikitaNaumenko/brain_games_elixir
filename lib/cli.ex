defmodule BrainGames.CLI do
  def main(_args) do
    IO.puts "Welcome to the Brain Games!\n"
    name = IO.gets "May I have your name?"
    IO.puts "Hello, #{name}"
  end
end

# BrainGames
[![Maintainability](https://api.codeclimate.com/v1/badges/1cc5b8bd28953e286fa3/maintainability)](https://codeclimate.com/github/NikitaNaumenko/brain_games_elixir/maintainability)

Brain games is a simple cli utilite, wich made just for fun.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `brain_games` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:brain_games, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/brain_games](https://hexdocs.pm/brain_games).


## Usage

You can choose one of five games
1) Brain-even - check is even number
2) Brain-calc - calculate the random mathematical expressions
3) Brain-greatest-common-divisor - find GCD for two numbers
4) Brain-progression - find missing number for algebraic progression
5) Brain-prime - check is prime number


```bash
  brain_games # for run game

  Welcome to the Brain Games!

  May I have your name?
  > Nikita # enter your name
  Hello, Nikita
  Choose a game:
  1) Brain-even
  2) Brain-calc
  3) Brain-greatest-common-divisor
  4) Brain-progression
  5) Brain-prime

  Enter game number
  > 1 # choose game - enter game number

  Answer 'yes' if number even otherwise answer 'no'.
  Question: 34
  Your answer?
  > yes
  Correct!

  Question: 82
  Your answer?
  > yes
  Correct!

  Question: 87
  Your answer?
  > no
  Correct!

  Congratulations, Nikita
```


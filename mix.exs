defmodule BrainGames.MixProject do
  use Mix.Project

  def project do
    [
      name: "Brain Games",
      app: :brain_games,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      elixirc_paths: elixirc_paths(Mix.env()),
      deps: deps(),
      escript: escript(),
      source_url: "https://github.com/NikitaNaumenko/brain_games_elixir",
      description: description(),
      package: package()
    ]
  end

  defp escript do
    [main_module: BrainGames.CLI]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 1.1.0", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.0.0-rc.7", only: [:dev], runtime: false},
      {:ex_doc, "~> 0.21", only: :dev, runtime: false},
      {:ex_prompt, "~> 0.1.5"}
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp description do
    "Brain games is a simple cli utilite, wich made just for fun."
  end

  defp package do
    [
      maintainers: ["Naumenko Nikita"],
      licenses: ["MIT"],
      links: %{GitHub: "https://github.com/NikitaNaumenko/brain_games_elixir"}
    ]
  end
end

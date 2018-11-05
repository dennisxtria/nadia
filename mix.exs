defmodule Nadia.Mixfile do
  use Mix.Project

  def project do
    [
      app: :nadia,
      version: "0.4.4",
      elixir: "~> 1.7",
      description: "Telegram Bot API Wrapper written in Elixir",
      package: package(),
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [applications: [:httpoison, :poison]]
  end

  defp deps do
    [
      {:credo, "~> 0.10.2"},
      {:dialyxir, "~> 0.5.1"},
      {:earmark, "~> 1.2", only: :docs},
      {:exvcr, "~> 0.10.3", only: [:dev, :test]},
      {:ex_doc, "~> 0.19.1", only: :docs},
      {:httpoison, "~> 1.4"},
      {:inch_ex, "~> 1.0", only: :docs},
      {:poison, "~> 3.1"}
    ]
  end

  defp package do
    [
      maintainers: ["zhyu"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/zhyu/nadia"}
    ]
  end
end

defmodule Clickhousex.Mixfile do
  use Mix.Project

  def project do
    [
      app: :clickhousex,
      version: "0.4.0",
      elixir: "~> 1.5",
      deps: deps(),
      package: package(),
      elixirc_paths: elixirc_paths(Mix.env()),
      source_url: "https://github.com/appodeal/clickhousex"
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "priv/repo", "test/support"]
  defp elixirc_paths(_), do: ["lib", "priv/repo"]

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:db_connection, "~> 2.2"},
      {:httpoison, "~> 1.5"},
      {:jason, "~> 1.1"},
      {:ex_doc, "~> 0.19", only: :dev},
      {:benchee, "~> 0.14.0", only: [:dev, :test]},
      {:dialyxir, "~> 1.0.0-rc.7", only: [:dev], runtime: false}
    ]
  end

  defp package do
    [
      name: "clickhousex",
      description: description(),
      maintainers: maintainers(),
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/appodeal/clickhousex"}
    ]
  end

  defp description do
    "ClickHouse driver for Elixir (uses HTTP)."
  end

  defp maintainers do
    ["Roman Chudov", "Konstantin Grabar", "Ivan Zinoviev", "Evgeniy Shurmin", "Alexey Lukyanov"]
  end
end

defmodule OpenVac.MixProject do
  use Mix.Project

  def project do
    [
      app: :openvac,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {OpenVac.Application, []}
    ]
  end

  defp deps do
    [
      {:cowlib, "~> 2.10", override: true},
      {:credo, "~> 1.5", only: [:dev, :test], runtime: false},
      {:ecto_sql, "~> 3.6"},
      {:jason, "~> 1.2"},
      {:phoenix, "~> 1.5"},
      {:plug_cowboy, "~> 2.5"},
      {:postgrex, "~> 0.15"}
    ]
  end

  defp aliases do
    [
      setup: ["deps.get", "ecto.setup"],
      "ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
      "ecto.reset": ["ecto.drop", "ecto.setup"],
      test: ["ecto.create --quiet", "ecto.migrate --quiet", "test"]
    ]
  end
end

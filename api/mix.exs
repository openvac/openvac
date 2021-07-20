defmodule OpenVac.MixProject do
  use Mix.Project

  def project do
    [
      app: :openvac,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      {:postgrex, "~> 0.15"},
      {:tesla, "~> 1.4"},
      {:finch, "~> 0.8.0"}
    ]
  end
end

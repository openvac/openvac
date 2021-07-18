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
      {:ecto_sql, "~> 3.6"},
      {:postgrex, "~> 0.15"},
      {:phoenix, "~> 1.5"},
      {:jason, "~> 1.2"},
      {:plug_cowboy, "~> 2.5"},
      {:cowlib, "~> 2.10", override: true}
    ]
  end
end

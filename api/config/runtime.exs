import Config

# TODO: Adds ENV-based configuration

config :openvac, OpenVac.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL", "ecto://0.0.0.0:5432/openvac?ssl=false")

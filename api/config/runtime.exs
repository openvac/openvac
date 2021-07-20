import Config

# TODO: Adds ENV-based configuration

config :openvac, OpenVac.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL", "ecto://0.0.0.0:5432/openvac?ssl=false")

config :openvac, OpenVac.Payment.Omise.API,
  api_base_url: System.get_env("OMISE_API_BASE_URL", "https://api.omise.co"),
  vault_base_url: System.get_env("OMISE_VAULT_BASE_URL", "https://vault.omise.co"),
  skey: System.get_env("OMISE_API_SKEY"),
  pkey: System.get_env("OMISE_API_PKEY")

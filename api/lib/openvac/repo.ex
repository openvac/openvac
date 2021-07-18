defmodule OpenVac.Repo do
  use Ecto.Repo,
    otp_app: :openvac,
    adapter: Ecto.Adapters.Postgres
end

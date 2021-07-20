import Config

config :phoenix,
  json_library: Jason

config :openvac, OpenVacWeb.Endpoint,
  url: [host: "0.0.0.0"],
  http: [port: 4000],
  server: true

config :openvac,
  ecto_repos: [OpenVac.Repo]

config :tesla, :adapter, {Tesla.Adapter.Finch, name: OpenVac.Finch}

config :openvac, OpenVac.Repo, url: "ecto://0.0.0.0:5432/openvac?sslmode=disable"

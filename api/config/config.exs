import Config

config :phoenix,
  json_library: Jason

config :openvac, OpenVacWeb.Endpoint,
  url: [host: "0.0.0.0"],
  http: [port: 4000],
  server: true

config :openvac,
  ecto_repos: [OpenVac.Repo]

config :openvac, OpenVac.Repo, url: "postgres://0.0.0.0:5432/openvac?sslmode=disable"

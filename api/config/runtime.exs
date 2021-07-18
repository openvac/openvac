import Config

config :phoenix,
  json_library: Jason

config :openvac, OpenVacWeb.Endpoint,
  url: [host: "0.0.0.0"],
  http: [port: 4000],
  server: true

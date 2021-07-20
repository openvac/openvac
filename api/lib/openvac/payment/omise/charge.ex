defmodule OpenVac.Payment.Omise.Charge do
  def list() do
    client()
    |> Tesla.get("/charges")
  end

  def create(request) do
    client()
    |> Tesla.post("/charges", request)
  end

  def get(id) do
    client()
    |> Tesla.get("/charges/" <> id)
  end

  def client() do
    opts = Application.get_env(:openvac, OpenVac.Payment.Omise.API)

    middleware = [
      {Tesla.Middleware.BaseUrl, opts[:api_base_url]},
      {Tesla.Middleware.BasicAuth, [username: opts[:skey], password: ""]},
      Tesla.Middleware.JSON
    ]

    Tesla.client(middleware)
  end
end

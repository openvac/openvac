defmodule OpenVac.Payment.Omise.Token do
  @moduledoc """
  !!! Caution Token module use only for Testing with Test Account !!!
  """

  def create(request) do
    client()
    |> Tesla.post("/tokens", request)
  end

  def client() do
    opts = Application.get_env(:openvac, OpenVac.Payment.Omise.API)

    middleware = [
      {Tesla.Middleware.BaseUrl, opts[:vault_base_url]},
      {Tesla.Middleware.BasicAuth, [username: opts[:pkey], password: ""]},
      Tesla.Middleware.JSON
    ]

    adapter = {Tesla.Adapter.Finch, [recv_timeout: 30_000]}

    Tesla.client(middleware, adapter)
  end
end

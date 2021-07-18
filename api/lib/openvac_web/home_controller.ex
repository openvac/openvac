defmodule OpenVacWeb.HomeController do
  use Phoenix.Controller, namespace: OpenVacWeb

  def index(conn, _params) do
    json(conn, %{alive: true})
  end
end

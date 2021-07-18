defmodule OpenVacWeb.Router do
  require Logger

  use Phoenix.Router, namespace: OpenVacWeb
  use Plug.ErrorHandler

  get("/", OpenVacWeb.HomeController, :index)
end

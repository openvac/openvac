defmodule OpenVacWeb.Router do
  require Logger

  use Phoenix.Router, namespace: OpenVacWeb
  use Plug.ErrorHandler

  get("/queue", OpenVacWeb.QueueController, :show)
  post("/users", OpenVacWeb.UserController, :create)
  post("/pay", OpenVacWeb.PaymentController, :create)
end

defmodule OpenVacWeb.PaymentController do
  use OpenVacWeb, :controller

  def create(conn, _params) do
    render(conn, "payment.json")
  end
end

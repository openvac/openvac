defmodule OpenVacWeb.PaymentView do
  use OpenVacWeb, :view

  def render("payment.json", %{}) do
    %{
      "result" => "ok"
    }
  end
end

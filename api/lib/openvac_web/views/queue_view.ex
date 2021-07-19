defmodule OpenVacWeb.QueueView do
  use OpenVacWeb, :view

  def render("token.json", %{token: %{queue: queue, expired_at: expired_at}}) do
    %{
      "queue" => queue,
      "expired_at" => expired_at
    }
  end
end

defmodule OpenVacWeb.QueueController do
  use OpenVacWeb, :controller

  def show(conn, _params) do
    token = %{
      queue: "c4517875-807c-4aff-b18a-ea7e1994a479",
      expired_at: DateTime.add(DateTime.utc_now(), 3600, :second)
    }

    render(conn, "token.json", token: token)
  end
end

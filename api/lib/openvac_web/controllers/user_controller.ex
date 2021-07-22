defmodule OpenVacWeb.UserController do
  use OpenVacWeb, :controller

  def create(conn, _params) do
    render(conn, "user.json")
  end
end

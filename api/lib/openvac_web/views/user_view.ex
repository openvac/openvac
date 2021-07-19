defmodule OpenVacWeb.UserView do
  use OpenVacWeb, :view

  def render("user.json", %{}) do
    %{
      "result" => "ok"
    }
  end
end

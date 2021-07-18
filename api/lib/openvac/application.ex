defmodule OpenVac.Application do
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      OpenVacWeb.Endpoint,
      OpenVac.Repo
    ]

    opts = [strategy: :one_for_one, name: OpenVac.Supervisor]
    Supervisor.start_link(children, opts)
  end
end

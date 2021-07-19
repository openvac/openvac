defmodule OpenVacWeb do
  def controller do
    quote do
      use Phoenix.Controller, namespace: OpenVacWeb

      import Plug.Conn
    end
  end

  def view do
    quote do
      use Phoenix.View, root: "lib/openvac_web/templates", namespace: OpenVacWeb
    end
  end

  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end

defmodule OpenVac.Queues.Queue do
  use Ecto.Schema
  import Ecto.Changeset

  schema "queues" do
    field :expired_at, :utc_datetime
    field :profile_id, :integer
    field :paid_at, :utc_datetime
    field :token, :string

    timestamps()
  end

  @doc false
  def changeset(queue, attrs) do
    queue
    |> cast(attrs, [:token, :expired_at, :profile_id, :paid_at])
    |> validate_required([:token])
  end
end

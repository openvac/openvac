defmodule Openvac.Repo.Migrations.CreateQueues do
  use Ecto.Migration

  def change do
    create table(:queues) do
      add :token, :string
      add :expired_at, :utc_datetime
      add :paid_at, :utc_datetime
      add :profile_id, :integer

      timestamps()
    end

    # This index is with assumption that we'll query a queue which is not paid
    # and expired.
    index("queues", [:paid_at, :expired_at])
    index("queues", [:token])
  end
end

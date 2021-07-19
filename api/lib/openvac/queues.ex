defmodule OpenVac.Queues do
  import Ecto.Query

  alias OpenVac.Repo
  alias OpenVac.Queues.Queue

  @doc """
  Retrieves and locks queue from database.

  Returns a reserving record
  """
  def get() do
    query =
      Queue
      |> select([:id])
      |> where([q], is_nil(q.expired_at) or q.expired_at < ^now())
      |> limit(1)
      |> lock("for update skip locked")

    update =
      Queue
      |> where([q], q.id in subquery(query))
      |> select([:id, :token])

    Repo.update_all(
      update,
      set: [token: generate_token(), expired_at: expired_at()]
    )
    |> case do
      {1, [record]} -> record
      err -> err
    end
  end

  defp generate_token(), do: "a-random-token"
  defp now(), do: DateTime.utc_now() |> DateTime.truncate(:second)
  defp expired_at(), do: DateTime.add(now(), 10 * 60, :second)
end

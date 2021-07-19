defmodule Mix.Tasks.OpenVac.GenerateQueues do
  use Mix.Task

  alias OpenVac.Repo
  alias OpenVac.Queues.Queue

  @doc """
  Generates 20 millions row of queues for proof of concept and testing purpose
  """
  @requirements ["app.start"]
  def run([]) do
    1..1_000
    |> Task.async_stream(
      fn _ -> insert() end,
      max_concurrency: 10
    )
    |> Enum.to_list()
  end

  defp insert() do
    queues =
      1..20_000
      |> Enum.map(fn _ ->
        %{
          inserted_at: NaiveDateTime.local_now(),
          updated_at: NaiveDateTime.local_now()
        }
      end)

    Repo.insert_all(Queue, queues)
  end
end

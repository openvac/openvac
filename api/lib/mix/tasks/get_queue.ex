defmodule Mix.Tasks.OpenVac.GetQueue do
  use Mix.Task

  alias OpenVac.Queues

  @doc """
  A simple comand to simulate retriving 100,000 queues with 100 concurrents
  """
  @requirements ["app.start"]
  def run([]) do
    result =
      1..100_000
      |> Task.async_stream(
        fn _ -> Queues.get() end,
        max_concurrency: 100
      )
      |> Enum.to_list()

    IO.inspect("total: ")
    IO.inspect(Enum.count(result))

    IO.inspect("total unique: ")

    result
    |> Enum.map(fn {:ok, record} -> record.id end)
    |> Enum.uniq()
    |> Enum.count()
    |> IO.inspect()
  end
end

defmodule Test do
  alias ConsumindoApi.Github.Client
  alias Tesla.Env
  @fields ["id", "name", "description", "html_url", "stargazers_count"]

  def test do
    Client.get_repos("xx")
    |> get_body()
    |> Enum.map(fn e -> get_fields(e) end)

    #  |> IEx.Info.info

    #
  end

  defp get_fields(item) do
    @fields
    |> Enum.reduce(%{}, fn e, acc -> Map.put(acc, e, Map.get(item, e)) end)
  end

  defp get_body({:ok, %Env{body: body}}) when is_map(body), do: {:error, "Invalid"}
  defp get_body({:ok, %Env{status: 404, body: %{"message" => message}}}), do: {:error, message}
  defp get_body({:ok, %Env{status: 200, body: body}}), do: body
end

#  ["id", "name", "description", "html_url", "stargazers_count"]

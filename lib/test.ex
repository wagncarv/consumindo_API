defmodule Test do
  alias ConsumindoApi.Github.Client
  # alias Tesla.Env
  # @fields ["id", "name", "description", "html_url", "stargazers_count"]

  def test do
    Client.search("danilo-vieira")
    # Client.get_repos("ppp")
    # |> get_body()
    # |> Enum.map(fn e -> get_fields(e) end)

    #  |> IEx.Info.info

    #
  end

  # def search(username) do
  #   Client.get_repos(username)
  #   |> get_body()
  #   |> get_search()
  # end

  # defp get_search({:error, result}), do: {:error, result}

  # defp get_search({:ok, body}) do
  #   body
  #   |> Enum.map(fn item -> get_fields(item) end)
  # end

  # defp get_fields(item) do
  #   @fields
  #   |> Enum.reduce(%{}, fn e, acc -> Map.put(acc, e, Map.get(item, e)) end)
  # end

  # defp get_body({:ok, %Env{body: body}}) when is_map(body), do: {:error, "Invalid"}
  # defp get_body({:ok, %Env{status: 404, body: %{"message" => message}}}), do: {:error, message}
  # defp get_body({:ok, %Env{status: 200, body: body}}), do: {:ok, body}
end

#  ["id", "name", "description", "html_url", "stargazers_count"]

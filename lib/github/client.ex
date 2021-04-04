defmodule ConsumindoApi.Github.Client do
  use Tesla
  plug Tesla.Middleware.BaseUrl, "https://api.github.com/users/"

  plug Tesla.Middleware.Headers, [
    {"user-agent",
     "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36"}
  ]

  plug Tesla.Middleware.JSON

  alias Tesla.Env

  @fields ["id", "name", "description", "html_url", "stargazers_count"]

  def get_repos(user) do
    "#{user}/repos"
    |> get()
  end

  def search(username) do
    username
    |> get_repos()
    |> get_body()
    |> get_search()
  end

  defp get_search({:error, result}), do: {:error, result}

  defp get_search({:ok, body}) do
    body
    |> Enum.map(fn item -> get_fields(item) end)
  end

  defp get_fields(item) do
    @fields
    |> Enum.reduce(%{}, fn e, acc -> Map.put(acc, e, Map.get(item, e)) end)
  end

  defp get_body({:ok, %Env{body: body}}) when is_map(body), do: {:error, "Invalid"}
  defp get_body({:ok, %Env{status: 404, body: %{"message" => message}}}), do: {:error, message}
  defp get_body({:ok, %Env{status: 200, body: body}}), do: {:ok, body}
end

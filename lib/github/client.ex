defmodule ConsumindoApi.Github.Client do
  use Tesla
  plug Tesla.Middleware.BaseUrl, "https://api.github.com/users/"

  plug Tesla.Middleware.Headers, [
    {"user-agent",
     "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36"}
  ]

  plug Tesla.Middleware.JSON

  alias Tesla.Env

  def get_repos(user) do
    "#{user}/repos"
    |> get()
  end

  defp get_fields(item) do
    @fields
    |> Enum.reduce(%{}, fn e, acc -> Map.put(acc, e, Map.get(item, e)) end)
  end

  defp get_body({:ok, %Env{body: body}}) when is_map(body), do: {:error, "Invalid"}
  defp get_body({:ok, %Env{status: 404, body: %{"message" => message}}}), do: {:error, message}
  defp get_body({:ok, %Env{status: 200, body: body}}), do: body
end

" id, name, description, html_url e stargazers_count"

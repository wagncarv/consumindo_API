defmodule Test do
  alias ConsumindoApi.Github.Client
  alias ConsumindoApi.Users.User
  # alias Tesla.Env
  # @fields ["id", "name", "description", "html_url", "stargazers_count"]

  def test do
    Client.search("danilo-vieira")
    # Client.get_repos("ppp")
    # |> get_body()
    # |> Enum.map(fn e -> get_fields(e) end)

    #  |> IEx.Info.info
  end
end

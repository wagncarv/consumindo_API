defmodule ConsumindoApi do
  alias ConsumindoApi.Github.Client, as: GithubClient
  defdelegate get_github_user(username), to: GithubClient, as: :search
end

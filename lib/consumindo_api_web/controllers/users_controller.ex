defmodule ConsumindoApiWeb.UsersController do
  use ConsumindoApiWeb, :controller
  # @derive {Jason.Encoder, only: [:id, :name, :description, :html_url, :stargazers_count]}

  def show(conn, username) do
    %{"username" => user} = username
    github_user = ConsumindoApi.get_github_user(user)

    [head |_] = github_user
    conn
    |> put_status(:ok)
    |> render("users.json", user: head)
  end
end

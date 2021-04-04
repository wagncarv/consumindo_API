defmodule ConsumindoApiWeb.UsersController do
  use ConsumindoApiWeb, :controller

  def show(conn, username) do
    search = ConsumindoApi.get_github_user(username)

    conn
    |> put_status(:ok)
    |> render("search.json", search)
  end
end

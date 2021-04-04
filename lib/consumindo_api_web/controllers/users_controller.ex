defmodule ConsumindoApiWeb.UsersController do
  use ConsumindoApiWeb, :controller
  # alias ConsumindoApi

  def show(conn, username) do
    ConsumindoApi.get_github_user(username)

    conn
    |> put_status(:ok)
    |> render("user.json", user: user)
  end
end

defmodule ConsumindoApiWeb.UsersController do
  use ConsumindoApiWeb, :controller

  def show(conn, username) do
    %{"username" => user} = username
    github_user = ConsumindoApi.get_github_user(user)
    IO.inspect(github_user, label: "==========================")

    conn
    |> put_status(:ok)
    |> render("users.json", user: github_user)
  end
end

defmodule ConsumindoApiWeb.UsersController do
  use ConsumindoApiWeb, :controller

  def show(conn, username) do
    %{"username" => user} = username
    github_user = ConsumindoApi.get_github_user(user)
    
    conn
    |> put_status(:ok)
    |> render("users.json", user: github_user)
  end

  # defp decode_params(params) do
  #   params
  #   |> Enum.map(fn e -> Jason.decode!(e) end)
  # end
end

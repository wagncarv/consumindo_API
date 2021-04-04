defmodule ConsumindoApiWeb.UsersController do
  use ConsumindoApiWeb, :controller
  # @derive {Jason.Encoder, only: [:id, :name, :description, :html_url, :stargazers_count]}

  def show(conn, username) do
    %{"username" => user} = username
    github_user = ConsumindoApi.get_github_user(user)

    values = Enum.map(github_user, fn e -> Jason.encode!(e) end)

    conn
    |> put_status(:ok)
    |> render("users.json", user: values)
  end

  # defp decode_params(params) do
  #   params
  #   |> Enum.map(fn e -> Jason.decode!(e) end)
  # end
end

defmodule ConsumindoApiWeb.UsersView do
  use ConsumindoApiWeb, :view

  def render("users.json", user) do
    values = user
    |> user_repos()

    %{
      user: values
    }
  end

  defp user_repos(%{conn: %{assigns: %{user: user}}}), do: user
end

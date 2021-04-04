defmodule ConsumindoApiWeb.UsersView do
  use ConsumindoApiWeb, :view

  def render("users.json", user) do
    %{
      github_user: user
    }
  end
end

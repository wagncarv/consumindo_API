defmodule ConsumindoApiWeb.UsersView do
  use ConsumindoApiWeb, :view

  def render("users.json", user) do
    %{
      user: user
    }
  end
end

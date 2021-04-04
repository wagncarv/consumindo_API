defmodule ConsumindoApiWeb.UsersView do
  use ConsumindoApiWeb, :view

  def render("users.json", search) do
    %{
      user: search
    }
  end
end

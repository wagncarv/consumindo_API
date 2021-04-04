defmodule ConsumindoApiWeb.UsersView do
  use ConsumindoApiWeb, :view

  def render("users.json", user) do
    IO.inspect(user)
    %{
      user: user
    }
  end
end

# %{
# user: user
# "id" => user["id"],
# "name" => user["name"],
# "description" => user["description"],
# "html_url" => user["html_url"],
# "stargazers_count" => user["stargazers_count"]
# }

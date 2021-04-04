defmodule ConsumindoApi.Users.User do
  @keys [:id, :name, :description, :html_url, :stargazers_count]
  @enforce_keys @keys
  defstruct @keys
  @derive Jason.Encoder

  def build(id, name, description, html_url, stargazers_count) do
    {:ok,
     %__MODULE__{
       id: id,
       name: name,
       description: description,
       html_url: html_url,
       stargazers_count: stargazers_count
     }}
  end
end

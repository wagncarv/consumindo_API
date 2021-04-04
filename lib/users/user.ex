defmodule ConsumindoApi.Users.User do
  @keys [:id, :name, :description, :html_url, :stargazers_count]
  @enforce_keys @keys
  defstruct @keys
  @derive {Jason.Encoder, only: [:id, :name, :description, :html_url, :stargazers_count]}

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

  # def build(_id, _name, _description, _html_url, _stargazers_count),
  #   do: {:error, "Invalid parameters"}
end

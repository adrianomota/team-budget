defmodule TeamBudgetGraphql.Resolvers.UserResolver do
  def list_users(_parent, _params, _resolutions) do
    {:ok,
     %{
       first_name: "Adriano",
       last_name: "Mota",
       email: "adrianowsh@gmail.com",
       role: "Admin"
     }}
  end
end

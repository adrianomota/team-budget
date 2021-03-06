defmodule TeamBudgetGraphql.Resolvers.UserResolver do
  alias TeamBudget.Accounts

  def list_users(_parent, _params, _resolutions), do: Accounts.list_users()

  def create_user(_parent, %{user: user}, _resolutions),
    do: Accounts.create_user(user)
end

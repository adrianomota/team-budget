defmodule TeamBudgetGraphql.Resolvers.UserResolver do
  alias TeamBudget.Accounts

  def list_users(_parent, _params, _resolutions) do
    Accounts.list_users()
  end
end

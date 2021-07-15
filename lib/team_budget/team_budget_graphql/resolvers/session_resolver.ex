defmodule TeamBudgetGraphql.Resolvers.SessionResolver do
  alias TeamBudget.Accounts.Core.Session

  def signin(_parent, %{user: user}, _resolutions) do
    Session.signin(user)
  end
end

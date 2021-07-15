defmodule TeamBudget.Sessions do
  alias TeamBudget.Accounts.Core.Session

  def signin(_parent, %{user: user}, _resolutions) do
    Session.signin(user)
  end
end

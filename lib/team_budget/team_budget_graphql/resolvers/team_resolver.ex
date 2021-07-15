defmodule TeamBudgetGraphql.Resolvers.TeamResolver do
  alias TeamBudget.Teams

  def list_teams(_parent, _params, %{context: %{current_user: %{id: user_id}}} = _resolutions) do
    Teams.list_teams(user_id)
  end

  # def create_user(_parent, %{user: user}, _resolutions),
  #   do: Accounts.create_user(user)
end

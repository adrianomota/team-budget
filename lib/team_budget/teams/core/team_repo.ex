defmodule TeamBudget.Teams.Core.TeamRepo do
  import Ecto.Query

  alias TeamBudget.Repo
  alias TeamBudget.Teams.Data.Team

  def list_teams(user_id) do
    query =
      from t in Team,
        where: t.user_id == ^user_id,
        select: t

    {:ok, Repo.all(query)}
  end
end

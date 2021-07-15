defmodule TeamBudget.Teams do
  alias TeamBudget.Teams.Core.TeamRepo
  def list_teams(user_id), do: TeamRepo.list_teams(user_id)
end

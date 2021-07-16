defmodule TeamBudgetGraphql.Middleware.SetTeam do
  @behaviour Absinthe.Middleware

  def call(resolution, _params), do: get_team(resolution, resolution.context.team)

  def get_team(resolution, nil),
    do: Absinthe.Resolution.put_result(resolution, {:error, "Please choose a valid slug team"})

  def get_team(resolution, %{id: _id}), do: resolution
end

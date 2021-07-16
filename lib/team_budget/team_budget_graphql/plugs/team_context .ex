defmodule TeamBudgetGraphql.Plug.TeamContext do
  @behaviour Plug
  import Plug.Conn

  alias TeamBudget.Teams.Core.TeamRepo

  def init(opts) do
    opts
  end

  def call(conn, _) do
    conn
    |> is_there_user_into_context?()
    |> case do
      nil ->
        Absinthe.Plug.put_options(conn, context: %{})

      curremt_user ->
        context =
          conn
          |> get_req_header("team")
          |> get_slug()
          |> get_team(curremt_user)

        Absinthe.Plug.put_options(conn, context: context)
    end
  end

  defp get_team(nil, current_user) do
    %{current_user: current_user}
  end

  defp get_team(slug, %{id: id} = current_user) do
    team = TeamRepo.get_team_by_user_and_slug(id, slug)
    %{current_user: current_user, team: team}
  end

  defp is_there_user_into_context?(conn) do
    %{current_user: curremt_user} = conn.private[:absinthe].context

    curremt_user
  end

  defp get_slug([]), do: nil
  defp get_slug([slug | _]), do: slug
end

defmodule TeamBudgetGraphql.Plug.Context do
  @behaviour Plug
  import Plug.Conn

  alias TeamBudget.Accounts.Core.Guardian

  def init(opts) do
    opts
  end

  def call(conn, _) do
    context = build_content(conn)
    Absinthe.Plug.put_options(conn, context: context)
  end

  defp build_content(conn) do
    with ["Bearer " <> token] = get_req_header(conn, "authorization"),
         {:ok, claims} <- Guardian.verify(token),
         {:ok, user} <- Guardian.resource_from_claims(claims) do
      %{current_user: user}
    else
      _ -> %{}
    end
  end
end

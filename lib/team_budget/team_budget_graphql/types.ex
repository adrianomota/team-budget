defmodule TeamBudgetGraphql.Types do
  use Absinthe.Schema.Notation

  alias TeamBudgetGraphql.Types.{Invite, Session, Team, User}

  import_types(Invite)
  import_types(Session)
  import_types(Team)
  import_types(User)
end

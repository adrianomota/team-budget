defmodule TeamBudgetGraphql.Types do
  use Absinthe.Schema.Notation

  alias TeamBudgetGraphql.Types.{Session, Team, User}

  import_types(User)
  import_types(Session)
  import_types(Team)
end

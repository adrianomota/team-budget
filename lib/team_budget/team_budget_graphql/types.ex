defmodule TeamBudgetGraphql.Types do
  use Absinthe.Schema.Notation

  alias TeamBudgetGraphql.Types.{Session, User}

  import_types(User)
  import_types(Session)
end

defmodule TeamBudgetGraphql.Types do
  use Absinthe.Schema.Notation

  alias TeamBudgetGraphql.Types.User

  import_types(User)
end

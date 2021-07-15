defmodule TeamBudgetGraphql.Types.Session do
  use Absinthe.Schema.Notation

  object :session do
    field :token, :string
    field :user, :user
  end

  input_object :login_input do
    field :email, :string
    field :password, :string
  end
end

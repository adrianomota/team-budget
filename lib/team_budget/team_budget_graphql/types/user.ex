defmodule TeamBudgetGraphql.Types.User do
  use Absinthe.Schema.Notation

  object :user do
    field :id, :id
    field :first_name, :string
    field :last_name, :string
    field :email, :string
    field :role, :string
  end

  input_object :user_input do
    field :first_name, :string
    field :last_name, :string
    field :email, :string
    field :role, :string
    field :password, :string
    field :password_confirmation, :string
  end
end

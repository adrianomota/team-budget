defmodule TeamBudgetGraphql.Schema do
  use Absinthe.Schema

  import AbsintheErrorPayload.Payload

  alias TeamBudgetGraphql.Resolvers
  alias TeamBudgetGraphql.Middleware.Authorize

  import_types(TeamBudgetGraphql.Types)
  import_types(AbsintheErrorPayload.ValidationMessageTypes)

  payload_object(:user_payload, :user)
  payload_object(:login_payload, :session)

  query do
    @desc "Get list of all users"

    field :list_users, list_of(:user) do
      middleware(Authorize, :user)
      resolve(&Resolvers.UserResolver.list_users/3)
    end
  end

  mutation do
    @desc "Create user"
    field :create_user, :user_payload do
      arg(:user, non_null(:user_input))
      resolve(&Resolvers.UserResolver.create_user/3)
      middleware(&build_payload/2)
    end

    @desc "Login with an user and then return a JWT token"
    field :login, :login_payload do
      arg(:user, non_null(:login_input))
      resolve(&Resolvers.SessionResolver.signin/3)
      middleware(&build_payload/2)
    end
  end
end

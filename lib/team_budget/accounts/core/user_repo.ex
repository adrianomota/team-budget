defmodule TeamBudget.Accounts.Core.UserRepo do
  alias TeamBudget.Accounts.Data.User
  alias TeamBudget.Repo

  def list_users, do: {:ok, Repo.all(User)}

  def create_user(user),
    do:
      user
      |> User.changeset()
      |> Repo.insert()

  def get_user(id), do: Repo.get(User, id)

  def get_by_email(email), do: Repo.get_by(User, email: email)
end

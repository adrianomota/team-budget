defmodule TeamBudget.Accounts.Core.Session do
  alias TeamBudget.Accounts.Core.{Guardian, UserRepo}

  def signin(user) do
    with {:ok, user} <- authenticate(user),
         {:ok, token, _} <- Guardian.sign(user) do
      {:ok, %{token: token, user: user}}
    end
  end

  defp authenticate(%{email: email, password: password}) do
    UserRepo.get_by_email(email)
    |> case do
      nil ->
        {:error, "login or password invalid"}

      %{password_hash: password_hash} = user ->
        if Argon2.verify_pass(password, password_hash) do
          {:ok, user}
        else
          {:error, "login or password invalid"}
        end
    end
  end
end

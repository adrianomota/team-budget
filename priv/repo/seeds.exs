alias TeamBudget.{Accounts.Data.User, Repo}

%{
  first_name: "Adriano",
  last_name: "Mota",
  email: "adrianowsh@gmail.com",
  role: "user",
  password: "123456",
  password_confirmation: "123456"
}
|> User.changeset()
|> Repo.insert()

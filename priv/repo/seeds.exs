alias TeamBudget.{Accounts.User, Repo}

%{
  first_name: "Adriano",
  last_name: "Mota",
  email: "adrianowsh@gmail.com",
  password_hash: "123456"
}
|> User.changeset()
|> Repo.insert()

%{
  first_name: "Miguel",
  last_name: "Mota",
  email: "miguelwsh@gmail.com",
  password_hash: "123456"
}
|> User.changeset()
|> Repo.insert()

%{
  first_name: "Gleyce",
  last_name: "Mota",
  email: "gleycewsh@gmail.com",
  password_hash: "123456"
}
|> User.changeset()
|> Repo.insert()

json.array!(@users) do |user|
  json.extract! user, :id, :fullname, :email, :repoURL, :projectURL, :OOP, :modular, :stack, :db, :debugging, :problemsolving, :javascript, :HTML, :CSS, :team, :motivation, :communication, :energy, :intelligence
  json.url user_url(user, format: :json)
end

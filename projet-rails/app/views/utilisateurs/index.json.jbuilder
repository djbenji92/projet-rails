json.array!(@utilisateurs) do |utilisateur|
  json.extract! utilisateur, :id, :email, :password
  json.url utilisateur_url(utilisateur, format: :json)
end

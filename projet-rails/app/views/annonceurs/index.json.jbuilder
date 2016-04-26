json.array!(@annonceurs) do |annonceur|
  json.extract! annonceur, :id, :email, :nom, :prenom, :password, :cp, :adresse, :telephone, :situation, :rayonIntervention
  json.url annonceur_url(annonceur, format: :json)
end

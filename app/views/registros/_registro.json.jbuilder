json.extract! registro, :id, :nome, :descricao, :created_at, :updated_at
json.url registro_url(registro, format: :json)

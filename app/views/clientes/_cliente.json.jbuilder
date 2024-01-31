json.extract! cliente, :id, :codigo, :nombre, :datocorreo, :telefono, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)

json.extract! contrato_servicio, :id, :cliente_id, :servicio, :cantidad, :valor_individual, :fecha_contratacion, :created_at, :updated_at
json.url contrato_servicio_url(contrato_servicio, format: :json)

json.extract! pago, :id, :quantitat, :fecha, :pagador_id, :expense_id, :created_at, :updated_at
json.url pago_url(pago, format: :json)

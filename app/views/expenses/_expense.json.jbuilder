json.extract! expense, :id, :nom, :quantitat, :fecha, :project_id, :provider_id, :created_at, :updated_at
json.url expense_url(expense, format: :json)

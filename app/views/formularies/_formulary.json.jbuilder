json.extract! formulary, :id, :name, :description, :date_begin, :date_end, :condition, :created_at, :updated_at
json.url formulary_url(formulary, format: :json)

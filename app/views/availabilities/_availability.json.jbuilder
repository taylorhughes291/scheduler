json.extract! availability, :id, :created_at, :updated_at, :name, :timezone, :day_of_week, :available_at, :available_until
json.url availability_url(availability, format: :json)

json.extract! timeslot, :id, :created_at, :updated_at, :coach, :day_of_week, :time, :available
json.url timeslot_url(timeslot, format: :json)

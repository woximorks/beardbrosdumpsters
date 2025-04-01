json.extract! rental, :id, :title, :address, :start_time, :end_time, :created_at, :updated_at
json.url rental_url(rental, format: :json)

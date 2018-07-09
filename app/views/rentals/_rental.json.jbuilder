json.extract! rental, :id, :car_id, :user_id, :start_date, :end_date, :cancelled, :created_at, :updated_at
json.url rental_url(rental, format: :json)

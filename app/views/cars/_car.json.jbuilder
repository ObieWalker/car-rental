json.extract! car, :id, :car_brand, :car_model, :image, :user_id, :available, :details, :price, :created_at, :updated_at
json.url car_url(car, format: :json)

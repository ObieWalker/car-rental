class Car < ApplicationRecord
  extend FriendlyId
  friendly_id :uniqueslug, use: :slugged

  def uniqueslug
    "#{car_brand}-#{car_model}"
  end
end

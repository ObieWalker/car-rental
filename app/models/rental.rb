class Rental < ApplicationRecord
  enum status: { pending: 0, confirmed: 1, cancelled: 2 }
end

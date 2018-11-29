class RemoveCancelledFromRentals < ActiveRecord::Migration[5.0]
  def change
    remove_column :rentals, :cancelled, :boolean
  end
end

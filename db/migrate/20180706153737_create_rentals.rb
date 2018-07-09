class CreateRentals < ActiveRecord::Migration[5.0]
  def change
    create_table :rentals do |t|
      t.integer :car_id
      t.integer :user_id
      t.string :start_date
      t.integer :end_date
      t.boolean :cancelled

      t.timestamps
    end
  end
end

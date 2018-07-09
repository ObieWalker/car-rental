class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.string :car_brand
      t.string :car_model
      t.string :image
      t.integer :user_id
      t.boolean :available
      t.text :details
      t.float :price

      t.timestamps
    end
  end
end

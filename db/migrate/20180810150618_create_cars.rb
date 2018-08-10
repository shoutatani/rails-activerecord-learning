class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :car_name
      t.integer :price
      t.references :maker, foreign_key: true
      t.references :engine, foreign_key: true

      t.timestamps
    end
  end
end

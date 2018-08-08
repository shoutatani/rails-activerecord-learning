class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :car_name
      t.decimal :price
      t.references :car_maker, foreign_key: true

      t.timestamps
    end
  end
end

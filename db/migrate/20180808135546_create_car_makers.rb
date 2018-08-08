class CreateCarMakers < ActiveRecord::Migration[5.2]
  def change
    create_table :car_makers do |t|
      t.string :maker_name
      t.string :country

      t.timestamps
    end
  end
end

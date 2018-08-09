class CreateFuels < ActiveRecord::Migration[5.2]
  def change
    create_table :fuels do |t|
      t.string :fuel_name

      t.timestamps
    end
  end
end

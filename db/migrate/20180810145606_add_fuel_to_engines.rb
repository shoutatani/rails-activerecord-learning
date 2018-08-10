class AddFuelToEngines < ActiveRecord::Migration[5.2]
  def change
    add_reference :engines, :fuel, foreign_key: true
  end
end

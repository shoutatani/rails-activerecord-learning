class CreateCarsEngineers < ActiveRecord::Migration[5.2]
  def change
    create_table :cars_engineers, id: false do |t|
      t.references :car, foreign_key: true, null: false
      t.references :engineer, foreign_key: true, null: false
    end
  end
end

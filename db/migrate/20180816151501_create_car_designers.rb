class CreateCarDesigners < ActiveRecord::Migration[5.2]
  def change
    create_table :car_designers do |t|
      t.references :car, foreign_key: true
      t.references :designer, foreign_key: true

      t.timestamps
    end
  end
end

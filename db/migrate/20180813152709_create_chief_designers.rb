class CreateChiefDesigners < ActiveRecord::Migration[5.2]
  def change
    create_table :chief_designers do |t|
      t.references :designer, foreign_key: true
      t.references :car, foreign_key: true, unique: true

      t.timestamps
    end
  end
end

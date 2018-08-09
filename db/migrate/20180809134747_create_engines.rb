class CreateEngines < ActiveRecord::Migration[5.2]
  def change
    create_table :engines do |t|
      t.string :engine_name
      t.integer :cc
      t.references :maker, foreign_key: true

      t.timestamps
    end
  end
end

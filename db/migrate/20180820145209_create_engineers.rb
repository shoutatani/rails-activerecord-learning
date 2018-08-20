class CreateEngineers < ActiveRecord::Migration[5.2]
  def change
    create_table :engineers do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end

class CreateMakers < ActiveRecord::Migration[5.2]
  def change
    create_table :makers do |t|
      t.string :type
      t.string :maker_name
      t.string :country

      t.timestamps
    end
  end
end

class CreateEquipment < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment do |t|
      t.string :item
      t.integer :cost
      t.string :facts
      t.string :aquarium_id

      t.timestamps
    end
  end
end

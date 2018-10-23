class CreateEquipment < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment do |t|
      t.string :item
      t.string :aquarium_id
      t.string :facts
      t.timestamps
    end
  end
end

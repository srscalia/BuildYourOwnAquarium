class CreateEquipment < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment do |t|
      t.string :item1
      t.string :facts1
      t.string :item2
      t.string :facts2
      t.string :item3
      t.string :facts3
      t.string :aquarium_id
      t.timestamps
    end
  end
end

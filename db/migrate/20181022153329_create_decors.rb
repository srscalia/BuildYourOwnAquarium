class CreateDecors < ActiveRecord::Migration[5.2]
  def change
    create_table :decors do |t|
      t.string :style
      t.integer :cost
      t.string :facts
      t.string :aquarium_id

      t.timestamps
    end
  end
end

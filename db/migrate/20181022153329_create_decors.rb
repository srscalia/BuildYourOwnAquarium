class CreateDecors < ActiveRecord::Migration[5.2]
  def change
    create_table :decors do |t|
      t.string :style
      t.string :aquarium_id
      t.string :facts
      t.timestamps
    end
  end
end

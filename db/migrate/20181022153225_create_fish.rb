class CreateFish < ActiveRecord::Migration[5.2]
  def change
    create_table :fish do |t|
      t.string :species
      t.integer :cost
      t.string :facts
      t.string :aquarium_id

      t.timestamps
    end
  end
end

class CreateFish < ActiveRecord::Migration[5.2]
  def change
    create_table :fish do |t|
      t.string :species
      t.string :aquarium_id
      t.string :facts

      t.timestamps
    end
  end
end

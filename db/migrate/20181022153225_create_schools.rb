class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
      t.string :species1
      t.string :facts1
      t.string :species2
      t.string :facts2
      t.string :species3
      t.string :facts3
      t.string :species4
      t.string :facts4
      t.string :species5
      t.string :facts5
      t.string :aquarium_id

      t.timestamps
    end
  end
end

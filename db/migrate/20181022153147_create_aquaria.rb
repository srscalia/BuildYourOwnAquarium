class CreateAquaria < ActiveRecord::Migration[5.2]
  def change
    create_table :aquaria do |t|
      t.string :creator
      t.integer :gallons

      t.timestamps
    end
  end
end

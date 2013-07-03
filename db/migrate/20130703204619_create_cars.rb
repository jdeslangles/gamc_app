class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model_name
      t.string :color
      t.integer :year
      t.integer :doors
      t.string :description
      t.string :image_url

      t.timestamps
    end
  end
end

class AddFieldsToCar < ActiveRecord::Migration
  def change
    add_column :cars, :engine_type_id, :integer
    add_column :cars, :body_type_id, :integer
  end
end

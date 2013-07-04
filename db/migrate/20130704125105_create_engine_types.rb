class CreateEngineTypes < ActiveRecord::Migration
  def change
    create_table :engine_types do |t|
      t.string :description
      t.string :fuel

      t.timestamps
    end
  end
end

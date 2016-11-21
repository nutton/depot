class CreateConfigurations < ActiveRecord::Migration[5.0]
  def change
    create_table :configurations do |t|
      t.integer :vendor_id
      t.string :model
      t.text :sw_comments
      t.integer :owner_id

      t.timestamps
    end
  end
end

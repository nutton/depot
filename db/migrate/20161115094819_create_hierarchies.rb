class CreateHierarchies < ActiveRecord::Migration[5.0]
  def change
    create_table :hierarchies do |t|
      t.integer :allowed_to_see_id
      t.integer :my_group_id

      t.timestamps
    end
  end
end

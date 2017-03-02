class CreateItemHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :item_histories do |t|
      t.integer :item_id
      t.integer :user_id
      t.string :operation_type
      t.string :comment

      t.timestamps
    end
  end
end

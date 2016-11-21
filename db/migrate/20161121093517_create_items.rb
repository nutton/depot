class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.integer :configuration_id
      t.text :serialnumber
      t.integer :site_id
      t.string :state_value

      t.timestamps
    end
  end
end

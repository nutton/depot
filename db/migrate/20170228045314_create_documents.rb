class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.integer :item_history_id
      t.integer :document_type
      t.binary :document_data, :limit => 10.megabyte

      t.timestamps
    end
  end
end

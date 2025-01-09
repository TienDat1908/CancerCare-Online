class CreateDocuments < ActiveRecord::Migration[7.2]
  def change
    create_table :documents do |t|
      t.references :medical_record, null: false, foreign_key: true
      t.string :file_path
      t.string :file_name
      t.string :file_type

      t.timestamps
    end
  end
end

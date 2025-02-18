class CreateMedicalRecords < ActiveRecord::Migration[7.2]
  def change
    create_table :medical_records do |t|
      t.references :user, null: false, foreign_key: true
      t.references :created_by_user, null: false, foreign_key: { to_table: :users }
      t.references :cancer, null: false, foreign_key: true
      t.text :diagnosis
      t.text :treatment

      t.timestamps
    end
  end
end

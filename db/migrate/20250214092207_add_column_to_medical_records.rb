class AddColumnToMedicalRecords < ActiveRecord::Migration[7.2]
  def change
    add_column :medical_records, :diagnosis_date, :datetime
    add_column :medical_records, :treatment_start_date, :datetime
    add_column :medical_records, :treatment_end_date, :datetime
    add_column :medical_records, :status, :string
    add_column :medical_records, :notes, :string
  end
end

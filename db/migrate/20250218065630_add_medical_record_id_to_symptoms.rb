class AddMedicalRecordIdToSymptoms < ActiveRecord::Migration[7.2]
  def change
    add_column :symptoms, :medical_record_id, :bigint
  end
end

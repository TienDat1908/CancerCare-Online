class AddMedicalRecordIdToTreatments < ActiveRecord::Migration[7.2]
  def change
    add_column :treatments, :medical_record_id, :bigint
  end
end

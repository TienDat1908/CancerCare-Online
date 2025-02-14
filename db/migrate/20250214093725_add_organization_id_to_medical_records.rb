class AddOrganizationIdToMedicalRecords < ActiveRecord::Migration[7.2]
  def change
    add_reference :medical_records, :organization
  end
end

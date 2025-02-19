class AddMedicalRecordIdToCancerRiskFactors < ActiveRecord::Migration[7.2]
  def change
    add_column :cancer_risk_factors, :medical_record_id, :bigint
  end
end

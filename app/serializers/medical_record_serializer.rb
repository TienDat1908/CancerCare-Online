class MedicalRecordSerializer < ActiveModel::Serializer
  attributes :id,
             :diagnosis,
             :treatment,
             :notes,
             :status,
             :cancer_id,
             :cancer_stage_id,
             :created_by_user_id,
             :user_id,
             :organization_id,
             :diagnosis_date,
             :treatment_start_date,
             :treatment_end_date,
             :created_at,
             :updated_at
end

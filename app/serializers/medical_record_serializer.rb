# frozen_string_literal: true

class MedicalRecordSerializer < ActiveModel::Serializer
  attributes :id,
             :cancer_id,
             :created_by_user_id,
             :user_id,
             :diagnosis,
             :treatment,
             :notes,
             :status,
             :diagnosis_date,
             :treatment_start_date,
             :treatment_end_date,
             :created_at,
             :updated_at
end

# == Schema Information
#
# Table name: medical_records
#
#  id                   :bigint           not null, primary key
#  diagnosis            :text
#  diagnosis_date       :datetime
#  notes                :string
#  status               :string
#  treatment            :text
#  treatment_end_date   :datetime
#  treatment_start_date :datetime
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  cancer_id            :bigint           not null
#  cancer_stage_id      :bigint           not null
#  created_by_user_id   :bigint           not null
#  organization_id      :bigint
#  user_id              :bigint           not null
#
# Indexes
#
#  index_medical_records_on_cancer_id           (cancer_id)
#  index_medical_records_on_cancer_stage_id     (cancer_stage_id)
#  index_medical_records_on_created_by_user_id  (created_by_user_id)
#  index_medical_records_on_organization_id     (organization_id)
#  index_medical_records_on_user_id             (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (cancer_id => cancers.id)
#  fk_rails_...  (cancer_stage_id => cancer_stages.id)
#  fk_rails_...  (created_by_user_id => users.id)
#  fk_rails_...  (user_id => users.id)
#
class MedicalRecordSerializer < ActiveModel::Serializer
  attributes :id, :diagnosis, :treatment, :cancer_id, :cancer_stage_id, :created_by_user_id, :created_at, :updated_at
end

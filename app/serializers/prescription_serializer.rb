# == Schema Information
#
# Table name: prescriptions
#
#  id                :bigint           not null, primary key
#  dosage            :string
#  instructions      :text
#  medication        :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  medical_record_id :bigint           not null
#
# Indexes
#
#  index_prescriptions_on_medical_record_id  (medical_record_id)
#
# Foreign Keys
#
#  fk_rails_...  (medical_record_id => medical_records.id)
#
class PrescriptionSerializer < ActiveModel::Serializer
  attributes :id, :medication, :dosage, :instructions, :created_at, :updated_at
end

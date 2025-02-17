class Prescription < ApplicationRecord
  belongs_to :medical_record
  belongs_to :user, foreign_key: :prescribed_by
end

# == Schema Information
#
# Table name: prescriptions
#
#  id                :bigint           not null, primary key
#  dosage            :string
#  end_date          :datetime
#  frequency         :string
#  instructions      :text
#  is_completed      :boolean
#  medication        :string
#  prescribed_by     :bigint           not null
#  side_effects      :text
#  start_date        :datetime
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  medical_record_id :bigint           not null
#
# Indexes
#
#  index_prescriptions_on_medical_record_id  (medical_record_id)
#  index_prescriptions_on_prescribed_by      (prescribed_by)
#
# Foreign Keys
#
#  fk_rails_...  (medical_record_id => medical_records.id)
#  fk_rails_...  (prescribed_by => users.id)
#

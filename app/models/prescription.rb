# frozen_string_literal: true

class Prescription < ApplicationRecord
  belongs_to :medical_record
  belongs_to :user, foreign_key: :prescribed_by
end

# == Schema Information
#
# Table name: prescriptions
#
#  id                :integer          not null, primary key
#  medical_record_id :integer          not null
#  medication        :string
#  dosage            :string
#  instructions      :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  start_date        :datetime
#  end_date          :datetime
#  frequency         :string
#  side_effects      :text
#  is_completed      :boolean
#  prescribed_by     :integer          not null
#
# Indexes
#
#  index_prescriptions_on_medical_record_id  (medical_record_id)
#  index_prescriptions_on_prescribed_by      (prescribed_by)
#

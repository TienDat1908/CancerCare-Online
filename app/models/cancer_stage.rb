# frozen_string_literal: true

class CancerStage < ApplicationRecord
  belongs_to :medical_record
end

# == Schema Information
#
# Table name: cancer_stages
#
#  id                :bigint           not null, primary key
#  description       :text
#  name              :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  medical_record_id :bigint           not null
#
# Indexes
#
#  index_cancer_stages_on_medical_record_id  (medical_record_id)
#
# Foreign Keys
#
#  fk_rails_...  (medical_record_id => medical_records.id)
#

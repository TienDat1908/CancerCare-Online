# frozen_string_literal: true

class Cancer < ApplicationRecord
  belongs_to :medical_record
  validates :name, presence: true, uniqueness: true
end

# == Schema Information
#
# Table name: cancers
#
#  id                :integer          not null, primary key
#  medical_record_id :integer          not null
#  name              :string
#  description       :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
# Indexes
#
#  index_cancers_on_medical_record_id  (medical_record_id)
#

# frozen_string_literal: true

class Symptom < ApplicationRecord
  belongs_to :medical_record
  validates :name, presence: true, uniqueness: true
end

# == Schema Information
#
# Table name: symptoms
#
#  id                :integer          not null, primary key
#  name              :string
#  description       :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  medical_record_id :integer
#

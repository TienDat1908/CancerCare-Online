# frozen_string_literal: true

class Symptom < ApplicationRecord
  belongs_to :medical_record
end

# == Schema Information
#
# Table name: symptoms
#
#  id                :bigint           not null, primary key
#  description       :text
#  name              :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  medical_record_id :bigint
#

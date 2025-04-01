# frozen_string_literal: true

class CancerRiskFactor < ApplicationRecord
  belongs_to :medical_record
  validates :name, presence: true, uniqueness: true
end

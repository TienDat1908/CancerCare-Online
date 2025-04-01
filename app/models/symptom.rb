# frozen_string_literal: true

class Symptom < ApplicationRecord
  belongs_to :medical_record
  validates :name, presence: true, uniqueness: true
end

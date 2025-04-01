# frozen_string_literal: true

class Treatment < ApplicationRecord
  belongs_to :medical_record
  validates :name, presence: true, uniqueness: true
end

# frozen_string_literal: true

class Cancer < ApplicationRecord
  belongs_to :medical_record
  validates :name, presence: true, uniqueness: true
end

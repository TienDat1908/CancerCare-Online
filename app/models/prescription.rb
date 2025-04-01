# frozen_string_literal: true

class Prescription < ApplicationRecord
  belongs_to :medical_record
  belongs_to :user, foreign_key: :prescribed_by
end

# frozen_string_literal: true

class PrescriptionSerializer < ActiveModel::Serializer
  attributes :id,
             :dosage,
             :frequency,
             :instructions,
             :medication,
             :side_effects,
             :is_completed,
             :start_date,
             :end_date,
             :created_at,
             :updated_at
end

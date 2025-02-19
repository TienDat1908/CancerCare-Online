# frozen_string_literal: true

class SymptomSerializer < ActiveModel::Serializer
  attributes :id, :medical_record_id, :name, :description, :created_at, :updated_at
end

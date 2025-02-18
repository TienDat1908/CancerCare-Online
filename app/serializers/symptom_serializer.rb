# frozen_string_literal: true

class SymptomSerializer < ActiveModel::Serializer
  attributes :id, :cancer_id, :name, :description, :created_at, :updated_at
end

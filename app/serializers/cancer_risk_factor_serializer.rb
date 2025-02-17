# frozen_string_literal: true

class CancerRiskFactorSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :created_at, :updated_at
end

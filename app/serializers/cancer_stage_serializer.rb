# frozen_string_literal: true

class CancerStageSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :created_at, :updated_at
end

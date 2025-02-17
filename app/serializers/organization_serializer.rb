# frozen_string_literal: true

class OrganizationSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :phone_number, :created_at, :updated_at
end

class AddressSerializer < ActiveModel::Serializer
  attributes :id, :street, :city, :state, :zip, :country, :primary_address, :created_at, :updated_at
end

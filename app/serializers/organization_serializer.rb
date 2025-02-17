# == Schema Information
#
# Table name: organizations
#
#  id           :bigint           not null, primary key
#  address      :string
#  name         :string
#  phone_number :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class OrganizationSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :phone_number, :created_at, :updated_at
end

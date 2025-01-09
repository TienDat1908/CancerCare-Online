# == Schema Information
#
# Table name: symptoms
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class SymptomSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :created_at, :updated_at
end

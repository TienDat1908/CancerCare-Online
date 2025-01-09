# == Schema Information
#
# Table name: cancers
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_cancers_on_name  (name) UNIQUE
#
class CancerSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :created_at, :updated_at
end

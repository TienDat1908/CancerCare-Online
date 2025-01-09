# == Schema Information
#
# Table name: cancer_risk_factors
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class CancerRiskFactorSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :created_at, :updated_at
end

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
class Cancer < ApplicationRecord
  has_many :cancer_stages, dependent: :destroy
  has_many :medical_records, dependent: :destroy
  has_and_belongs_to_many :symptoms
  has_and_belongs_to_many :cancer_risk_factors
  validates :name, presence: true, uniqueness: true
end

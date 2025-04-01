# frozen_string_literal: true

class MedicalRecord < ApplicationRecord
  has_many_attached :images

  belongs_to :user
  belongs_to :created_by_user, class_name: 'User'

  has_many :cancers
  has_many :cancer_risk_factors
  has_many :cancer_stages
  has_many :documents, dependent: :destroy
  has_many :prescriptions, dependent: :destroy
  has_many :symptoms
  has_many :treatments

  enum :status, { active: 'active',
                  recovered: 'recovered',
                  deceased: 'deceased',
                  in_remission: 'in_remission' }

  def self.ransackable_attributes(_auth_object = nil)
    %w[id diagnosis notes status created_at updated_at]
  end
end

# == Schema Information
#
# Table name: medical_records
#
#  id                   :integer          not null, primary key
#  user_id              :integer          not null
#  created_by_user_id   :integer          not null
#  diagnosis            :text
#  treatment            :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  diagnosis_date       :datetime
#  treatment_start_date :datetime
#  treatment_end_date   :datetime
#  status               :string
#  notes                :string
#
# Indexes
#
#  index_medical_records_on_created_by_user_id  (created_by_user_id)
#  index_medical_records_on_user_id             (user_id)
#

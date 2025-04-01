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

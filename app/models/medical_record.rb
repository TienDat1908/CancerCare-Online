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
#  id                   :bigint           not null, primary key
#  diagnosis            :text
#  diagnosis_date       :datetime
#  notes                :string
#  status               :string
#  treatment            :text
#  treatment_end_date   :datetime
#  treatment_start_date :datetime
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  created_by_user_id   :bigint           not null
#  user_id              :bigint           not null
#
# Indexes
#
#  index_medical_records_on_created_by_user_id  (created_by_user_id)
#  index_medical_records_on_user_id             (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (created_by_user_id => users.id)
#  fk_rails_...  (user_id => users.id)
#

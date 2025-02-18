# frozen_string_literal: true

class CancerRiskFactor < ApplicationRecord
  belongs_to :cancer
end

# == Schema Information
#
# Table name: cancer_risk_factors
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  cancer_id   :bigint
#

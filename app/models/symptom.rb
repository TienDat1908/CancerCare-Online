# frozen_string_literal: true

class Symptom < ApplicationRecord
  has_and_belongs_to_many :cancers
end

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

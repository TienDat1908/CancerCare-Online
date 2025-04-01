# frozen_string_literal: true

class Organization < ApplicationRecord
  has_many :users
end

# == Schema Information
#
# Table name: organizations
#
#  id           :integer          not null, primary key
#  name         :string
#  address      :string
#  phone_number :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

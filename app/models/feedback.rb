# frozen_string_literal: true

class Feedback < ApplicationRecord
  has_many_attached :images

  belongs_to :user

  validates :title, :description, presence: true

  def self.ransackable_attributes(_auth_object = nil)
    %w[id title description created_at updated_at]
  end
end

# == Schema Information
#
# Table name: feedbacks
#
#  id          :integer          not null, primary key
#  title       :string
#  description :string
#  user_id     :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_feedbacks_on_user_id  (user_id)
#

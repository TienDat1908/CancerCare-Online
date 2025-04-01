# frozen_string_literal: true

class Feedback < ApplicationRecord
  has_many_attached :images

  belongs_to :user

  validates :title, :description, presence: true

  def self.ransackable_attributes(_auth_object = nil)
    %w[id title description created_at updated_at]
  end
end

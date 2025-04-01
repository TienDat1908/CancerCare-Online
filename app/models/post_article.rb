# frozen_string_literal: true

class PostArticle < ApplicationRecord
  belongs_to :user

  before_update :store_previous_updated_at

  def self.ransackable_attributes(_auth_object = nil)
    %w[id title content created_at updated_at]
  end

  private

  def store_previous_updated_at
    self.previous_updated_at = updated_at
  end
end

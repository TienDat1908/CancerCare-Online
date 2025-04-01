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

# == Schema Information
#
# Table name: post_articles
#
#  id                  :integer          not null, primary key
#  title               :string
#  content             :text
#  user_id             :integer          not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  previous_updated_at :datetime
#
# Indexes
#
#  index_post_articles_on_user_id  (user_id)
#

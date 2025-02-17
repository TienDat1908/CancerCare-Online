# frozen_string_literal: true

class FeedbackSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :images_url, :user_id, :created_at, :updated_at

  def images_url
    return unless object.images.attached?

    object.images.map do |image|
      Rails.application.routes.url_helpers.url_for(image)
    end
  end
end

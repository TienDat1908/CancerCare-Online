# frozen_string_literal: true

class MedicalRecordSerializer < ActiveModel::Serializer
  attributes :id,
             :created_by_user_id,
             :user_id,
             :diagnosis,
             :treatment,
             :notes,
             :status,
             :diagnosis_date,
             :treatment_start_date,
             :treatment_end_date,
             :created_at,
             :updated_at,
             :images_url

  def images_url
    return unless object.images.attached?

    object.images.map do |image|
      Rails.application.routes.url_helpers.url_for(image)
    end
  end
end

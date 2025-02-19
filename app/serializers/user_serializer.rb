# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id,
             :email,
             :first_name,
             :last_name,
             :gender,
             :phone_number,
             :role,
             :specialization,
             :status,
             :date_of_diagnosis,
             :created_at,
             :updated_at,
             :avatar_url

  def avatar_url
    object.avatar.attached? ? Rails.application.routes.url_helpers.rails_blob_path(object.avatar, only_path: true) : nil
  end
end

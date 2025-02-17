class UserSerializer < ActiveModel::Serializer
  attributes :id,
             :email,
             :phone_number,
             :first_name,
             :last_name,
             :gender,
             :role,
             :date_of_diagnosis,
             :specialization,
             :created_at,
             :updated_at,
             :avatar_url

  def avatar_url
    object.avatar.attached? ? Rails.application.routes.url_helpers.rails_blob_path(object.avatar, only_path: true) : nil
  end
end

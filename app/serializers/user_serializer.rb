# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :inet
#  date_of_birth          :date
#  date_of_diagnosis      :datetime
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string
#  gender                 :string
#  last_name              :string
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :inet
#  phone_number           :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  role                   :string
#  sign_in_count          :integer          default(0), not null
#  specialization         :string
#  status                 :boolean          default(FALSE)
#  username               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  admin_user_id          :bigint           not null
#  organization_id        :bigint
#
# Indexes
#
#  index_users_on_admin_user_id         (admin_user_id)
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_organization_id       (organization_id)
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_username              (username) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (admin_user_id => admin_users.id)
#  fk_rails_...  (organization_id => organizations.id)
#
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

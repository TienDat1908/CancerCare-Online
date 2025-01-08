# == Schema Information
#
# Table name: doctors
#
#  id          :bigint           not null, primary key
#  description :text
#  experience  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_doctors_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :description, :experience
end

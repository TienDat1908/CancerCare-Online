# == Schema Information
#
# Table name: patients
#
#  id            :bigint           not null, primary key
#  blood_type    :string
#  date_of_birth :date
#  gender        :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :bigint           not null
#
# Indexes
#
#  index_patients_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class PatientSerializer < ActiveModel::Serializer
  attributes :id, :blood_type, :date_of_birth, :gender
end

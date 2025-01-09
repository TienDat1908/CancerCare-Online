# == Schema Information
#
# Table name: cancer_stages
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  cancer_id   :bigint           not null
#
# Indexes
#
#  index_cancer_stages_on_cancer_id  (cancer_id)
#
# Foreign Keys
#
#  fk_rails_...  (cancer_id => cancers.id)
#
class CancerStageSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :created_at, :updated_at
end

class PrescriptionSerializer < ActiveModel::Serializer
  attributes :id, :medication, :dosage, :instructions, :created_at, :updated_at
end

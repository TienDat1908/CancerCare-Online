class DocumentSerializer < ActiveModel::Serializer
  attributes :id, :file_name, :file_path, :file_type, :created_at, :updated_at
end

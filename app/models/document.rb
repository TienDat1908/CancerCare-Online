# frozen_string_literal: true

class Document < ApplicationRecord
  belongs_to :medical_record
end

# == Schema Information
#
# Table name: documents
#
#  id                :integer          not null, primary key
#  medical_record_id :integer          not null
#  file_path         :string
#  file_name         :string
#  file_type         :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
# Indexes
#
#  index_documents_on_medical_record_id  (medical_record_id)
#

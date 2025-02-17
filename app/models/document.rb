# frozen_string_literal: true

class Document < ApplicationRecord
  belongs_to :medical_record
end

# == Schema Information
#
# Table name: documents
#
#  id                :bigint           not null, primary key
#  file_name         :string
#  file_path         :string
#  file_type         :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  medical_record_id :bigint           not null
#
# Indexes
#
#  index_documents_on_medical_record_id  (medical_record_id)
#
# Foreign Keys
#
#  fk_rails_...  (medical_record_id => medical_records.id)
#

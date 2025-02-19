# frozen_string_literal: true

module Api
  module V1
    class MedicalRecordsController < ApplicationApiController
      def create
        medical_record = @current_user.medical_records.build(medical_record_params)

        medical_record.created_by_user = @current_user

        if medical_record.save
          render json: medical_record, status: :created
        else
          render json: medical_record.errors, status: :unprocessable_entity
        end
      end

      private

      def medical_record_params
        params.require(:medical_record).permit(
          :diagnosis,
          :diagnosis_date,
          :notes,
          :status,
          :treatment,
          :treatment_start_date,
          :treatment_end_date,
          images: []
        )
      end
    end
  end
end

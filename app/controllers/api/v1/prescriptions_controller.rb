# frozen_string_literal: true

module Api
  module V1
    class PrescriptionsController < ApplicationApiController
      before_action :set_medical_record

      def create
        prescription = @medical_record.prescriptions.new(prescription_params)
        prescription.user = @current_user

        if prescription.save
          render json: prescription, status: :created
        else
          render json: prescription.errors, status: :unprocessable_entity
        end
      end

      private

      def set_medical_record
        @medical_record = MedicalRecord.find_by(id: params[:medical_record_id])
        render json: { error: 'Medical record not found' }, status: :not_found unless @medical_record
      end

      def prescription_params
        params.require(:prescription).permit(
          :dosage,
          :end_date,
          :frequency,
          :instructions,
          :is_completed,
          :medication,
          :side_effects,
          :start_date
        )
      end
    end
  end
end

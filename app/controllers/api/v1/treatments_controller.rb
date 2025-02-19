# frozen_string_literal: true

module Api
  module V1
    class TreatmentsController < ApplicationApiController
      before_action :set_medical_record

      def create
        @treatment = @medical_record.treatments.new(treatment_params)

        if @treatment.save
          render json: @treatment, status: :created
        else
          render json: @treatment.errors, status: :unprocessable_entity
        end
      end

      private

      def set_medical_record
        @medical_record = MedicalRecord.find_by(id: params[:medical_record_id])
        render json: { error: 'Medical Record not found' }, status: :not_found unless @medical_record
      end

      def treatment_params
        params.require(:treatment).permit(:name, :description)
      end
    end
  end
end

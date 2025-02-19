# frozen_string_literal: true

module Api
  module V1
    class SymptomsController < ApplicationApiController
      before_action :set_medical_record

      def create
        @symptom = @medical_record.symptoms.new(symptom_params)

        if @symptom.save
          render json: @symptom, status: :created
        else
          render json: @symptom.errors, status: :unprocessable_entity
        end
      end

      private

      def set_medical_record
        @medical_record = MedicalRecord.find_by(id: params[:medical_record_id])
        render json: { error: 'Medical Record not found' }, status: :not_found unless @medical_record
      end

      def symptom_params
        params.require(:symptom).permit(:name, :description)
      end
    end
  end
end

# frozen_string_literal: true

module Api
  module V1
    class CancerStagesController < ApplicationApiController
      before_action :set_medical_record

      def create
        cancer_stage = @medical_record.cancer_stages.new(cancer_stage_params)

        if cancer_stage.save
          render json: cancer_stage, status: :created
        else
          render json: cancer_stage.errors, status: :unprocessable_entity
        end
      end

      private

      def set_medical_record
        @medical_record = MedicalRecord.find_by(id: params[:medical_record_id])
        render json: { error: 'Medical Record not found' }, status: :not_found unless @medical_record
      end

      def cancer_stage_params
        params.require(:cancer_stage).permit(:name, :description)
      end
    end
  end
end

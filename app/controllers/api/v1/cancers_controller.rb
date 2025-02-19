# frozen_string_literal: true

module Api
  module V1
    class CancersController < ApplicationApiController
      before_action :set_medical_record

      def create
        cancer = @medical_record.cancer.new(cancer_params)

        if cancer.save
          render json: cancer, status: :created
        else
          render json: cancer.errors, status: :unprocessable_entity
        end
      end

      private

      def set_medical_record
        @medical_record = MedicalRecord.find_by(id: params[:medical_record_id])
        render json: { error: 'Medical Record not found' }, status: :not_found unless @medical_record
      end

      def cancer_params
        params.require(:cancer).permit(:name, :description)
      end
    end
  end
end

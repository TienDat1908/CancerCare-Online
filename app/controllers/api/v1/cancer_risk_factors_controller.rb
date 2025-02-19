# frozen_string_literal: true

module Api
  module V1
    class CancerRiskFactorsController < ApplicationApiController
      before_action :set_medical_record

      def create
        cancer_risk_factor = @medical_record.cancer_risk_factors.new(cancer_risk_factor_params)

        if cancer_risk_factor.save
          render json: cancer_risk_factor, status: :created
        else
          render json: cancer_risk_factor.errors, status: :unprocessable_entity
        end
      end

      private

      def set_medical_record
        @medical_record = MedicalRecord.find_by(id: params[:medical_record_id])
        render json: { error: 'Medical Record not found' }, status: :not_found unless @medical_record
      end

      def cancer_risk_factor_params
        params.require(:cancer_risk_factor).permit(:name, :description)
      end
    end
  end
end

# frozen_string_literal: true

module Api
  module V1
    class CancerRiskFactorsController < ApplicationApiController
      before_action :set_cancer

      def create
        cancer_risk_factor = @cancer.cancer_risk_factors.new(cancer_risk_factor_params)

        if cancer_risk_factor.save
          render json: cancer_risk_factor, status: :created
        else
          render json: cancer_risk_factor.errors, status: :unprocessable_entity
        end
      end

      private

      def set_cancer
        @cancer = Cancer.find_by(id: params[:cancer_id])
        render json: { error: 'Cancer not found' }, status: :not_found unless @cancer
      end

      def cancer_risk_factor_params
        params.require(:cancer_risk_factor).permit(:name, :description)
      end
    end
  end
end

# frozen_string_literal: true

module Api
  module V1
    class TreatmentsController < ApplicationApiController
      before_action :set_cancer

      def create
        @treatment = @cancer.treatments.new(treatment_params)

        if @treatment.save
          render json: @treatment, status: :created
        else
          render json: @treatment.errors, status: :unprocessable_entity
        end
      end

      private

      def set_cancer
        @cancer = Cancer.find_by(id: params[:cancer_id])
        render json: { error: 'Cancer not found' }, status: :not_found unless @cancer
      end

      def treatment_params
        params.require(:treatment).permit(:name, :description)
      end
    end
  end
end

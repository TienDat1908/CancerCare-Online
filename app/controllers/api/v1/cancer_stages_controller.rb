# frozen_string_literal: true

module Api
  module V1
    class CancerStagesController < ApplicationApiController
      before_action :set_cancer

      def create
        cancer_stage = @cancer.cancer_stages.new(cancer_stage_params)

        if cancer_stage.save
          render json: cancer_stage, status: :created
        else
          render json: cancer_stage.errors, status: :unprocessable_entity
        end
      end

      private

      def set_cancer
        @cancer = Cancer.find_by(id: params[:cancer_id])
        render json: { error: 'Cancer not found' }, status: :not_found unless @cancer
      end

      def cancer_stage_params
        params.require(:cancer_stage).permit(:name, :description)
      end
    end
  end
end

# frozen_string_literal: true

module Api
  module V1
    class SymptomsController < ApplicationApiController
      before_action :set_cancer

      def create
        @symptom = @cancer.symptoms.new(symptom_params)

        if @symptom.save
          render json: @symptom, status: :created
        else
          render json: @symptom.errors, status: :unprocessable_entity
        end
      end

      private

      def set_cancer
        @cancer = Cancer.find_by(id: params[:cancer_id])
        render json: { error: 'Cancer not found' }, status: :not_found unless @cancer
      end

      def symptom_params
        params.require(:symptom).permit(:name, :description)
      end
    end
  end
end

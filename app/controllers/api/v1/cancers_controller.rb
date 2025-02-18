# frozen_string_literal: true

module Api
  module V1
    class CancersController < ApplicationApiController
      def create
        cancer = Cancer.new(cancer_params)

        if cancer.save
          render json: cancer, status: :created
        else
          render json: { errors: cancer.errors.full_messages }, status: :unprocessable_entity
        end
      end

      private

      def cancer_params
        params.require(:cancer).permit(:name, :description)
      end
    end
  end
end

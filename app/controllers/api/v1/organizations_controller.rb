# frozen_string_literal: true

module Api
  module V1
    class OrganizationsController < ApplicationApiController
      def create
        @organization = Organization.new(organization_params)

        if @organization.save
          @current_user.update(organization: @organization)
          render json: @organization, status: :created
        else
          render json: @organization.errors, status: :unprocessable_entity
        end
      end

      private

      def organization_params
        params.require(:organization).permit(
          :address,
          :name,
          :phone_number
        )
      end
    end
  end
end

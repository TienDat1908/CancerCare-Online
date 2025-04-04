# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  skip_before_action :verify_authenticity_token, if: -> { request.format.json? }

  allow_browser versions: :modern

  def after_sign_in_path_for(resource)
    if resource.is_a?(AdminUser)
      admin_users_dashboard_index_path
    else
      dashboard_path
    end
  end

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end

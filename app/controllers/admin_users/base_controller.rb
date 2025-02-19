# frozen_string_literal: true

module AdminUsers
  class BaseController < ApplicationController
    before_action :authenticate_admin_user!

    layout 'admin_dashboard'
  end
end

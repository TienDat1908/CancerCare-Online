# frozen_string_literal: true

module AdminUsers
  class DashboardController < ApplicationController
    before_action :authenticate_admin_user!

    layout 'admin_dashboard'

    def index; end
  end
end

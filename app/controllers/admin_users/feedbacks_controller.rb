# frozen_string_literal: true

module AdminUsers
  class FeedbacksController < BaseController
    def index
      @q = Feedback.ransack(params[:q])
      @feedbacks = @q.result.order(created_at: :desc).page(params[:page]).per(12)
    end

    def content_feedback
      @feedback = Feedback.find(params[:id])
    end
  end
end

# frozen_string_literal: true

module AdminUsers
  class PostArticlesController < BaseController
    def index
      @q = PostArticle.ransack(params[:q])
      @post_articles = @q.result.order(created_at: :desc).page(params[:page]).per(12)
    end

    def content_post_articles
      @post_articles = PostArticle.find(params[:id])
    end
  end
end

# frozen_string_literal: true

class PostArticleSerializer < ActiveModel::Serializer
  attributes :id,
             :title,
             :user_id,
             :content,
             :created_at,
             :updated_at,
             :previous_updated_at
end

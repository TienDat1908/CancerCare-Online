Rails.application.routes.draw do
  root to: 'home#index'

  # Devise cho AdminUser
  devise_for :admin_users, skip: %i[registrations passwords confirmations unlocks], controllers: {
    sessions: 'admin_users/sessions'
  }

  # Dashboard cho User
  get 'dashboard', to: 'dashboard#index', as: :dashboard

  # Namespace cho admin_users
  namespace :admin_users do
    resources :dashboard
    resources :users, only: %i[index destroy] do
      member do
        get :profile_user
      end
    end
    resources :post_articles do
      member do
        get :content_post_articles
      end
    end
    resources :profile_admin_users
    resources :feedbacks do
      member do
        get :content_feedback
      end
    end
  end

  namespace :api do
    namespace :v1 do
      resources :auth do
        collection do
          post :login
          post :signup
          post :logout
          patch :update_profile
        end
      end

      resources :post_articles, only: %i[index show create update destroy]
      resources :addresses
      resources :feedbacks, only: %i[create]
    end
  end
end

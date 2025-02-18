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
    resources :feedbacks do
      member do
        get :content_feedback
      end
    end
    resources :post_articles do
      member do
        get :content_post_articles
      end
    end
    resources :users, only: %i[index destroy] do
      member do
        get :profile_user
      end
    end
  end

  namespace :api do
    namespace :v1 do
      resources :addresses
      resources :auth do
        collection do
          post :login
          post :signup
          post :logout
          patch :update_profile
        end
      end

      resources :cancers do
        resources :cancer_stages
        resources :cancer_risk_factors
        resources :medical_records do
          resources :prescriptions
        end
        resources :symptoms
        resources :treatments
      end
      resources :documents
      resources :feedbacks, only: %i[create]
      resources :organizations
      resources :post_articles, only: %i[index show create update destroy]
    end
  end
end

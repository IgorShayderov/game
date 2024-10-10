Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: %i[show create update]
      resources :items, only: %i[show create update]

      resources :sessions, only: %i[update]

      post :sign_in, to: 'sessions#create'
      delete :sign_out, to: 'sessions#destroy'
      get :current_user, to: 'sessions#me'
    end
  end
end

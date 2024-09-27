Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: %i[show create update]
      resources :items, only: %i[show]

        resources :sessions, only: %i[create]

        post :sign_in, to: 'sessions#create'
        delete :sign_out, to: 'sessions#destroy'
    end
  end
end

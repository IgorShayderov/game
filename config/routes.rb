Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'sessions#new'

  get :sign_up, to: 'users#new'
  get :sign_in, to: 'sessions#new'
  delete :sign_out, to: 'sessions#destroy'

  resources :users, only: %i[show create]
  resources :sessions, only: %i[create]
end

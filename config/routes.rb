Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#new'

  get :signup, to: 'users#new'

  resources :users, only: %i[create show]
end

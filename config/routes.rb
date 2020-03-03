Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :parcels
  resources :orders do
    # resources :deliveries, only: [ :create]
    # resources :reviews, only: [:new, :create, :show]
  end
  resources :drivers
  # resources :deliveries, only: [:index, :show]
  resources :reviews
end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

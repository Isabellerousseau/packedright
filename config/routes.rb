Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  Resources :parcels do
    resources :orders, only: [:new, :create, :show]
    resources :deliveries, only: [:new, :create]
  end

  Resources :orders, only: [:edit, :update, :destroy] do
    resources :reviews, only: [:new, :create, :show]
  end

  resources :drivers, only: [:new, :create, :edit, :update, :destroy, :show, :index]
  resources :deliveries, only: [:index, :show]
  resources :reviews, only: [:index, :edit, :update, :destroy]
end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

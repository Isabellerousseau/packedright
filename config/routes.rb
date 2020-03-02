Rails.application.routes.draw do
  devise_for :users
  get 'pages/home'
  get 'parcels/index'
  get 'parcels/new'
  get 'parcels/create'
  get 'parcels/show'
  get 'parcels/edit'
  get 'parcels/update'
  get 'parcels/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'drivers/index'
  get 'drivers/show'
  get 'drivers/new'
  get 'drivers/create'
  get 'drivers/edit'
  get 'drivers/update'
  get 'drivers/destroy'
  get 'index/show'
  get 'index/new'
  get 'index/create'
  get 'index/edit'
  get 'index/update'
  get 'index/destro'
  devise_for :users

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'startup/index'

  devise_for :users
  resources :productos
  resources :users
  post 'users', to: 'users#create' 
  get '', to: 'productos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

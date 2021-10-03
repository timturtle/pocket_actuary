Rails.application.routes.draw do
  resources :information
  devise_for :customers
  resources :users
  get 'home/about'
  # root 'home#index'
  root 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

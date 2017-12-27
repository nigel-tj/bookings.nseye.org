Rails.application.routes.draw do
  resources :charges , only: [:new , :create]
  resources :rooms
  devise_for :users
  resources :users
  root to: 'visitors#index'
end

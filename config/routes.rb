Rails.application.routes.draw do
  resources :rooms
  devise_for :users
  resources :users
  root to: 'visitors#index'
end

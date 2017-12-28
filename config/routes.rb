Rails.application.routes.draw do
  resources :charges , only: [:new , :create]
  get 'thanks' , to: 'charges#thanks' , as: 'thanks'
  resources :rooms
  devise_for :users
  resources :users
  root to: 'visitors#index'
end

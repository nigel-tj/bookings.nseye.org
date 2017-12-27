Rails.application.routes.draw do
  resources :rooms
  devise_for :users
  resources :users
  resources :visitors
  match '/contact' => 'visitors#contact', :via => :get
  root to: 'visitors#index'
end

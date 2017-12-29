Rails.application.routes.draw do
  get 'admin_section/index'
  resources :photos, only: [:new, :create, :index , :destroy]
  resources :charges , only: [:new , :create]
  get 'thanks' , to: 'charges#thanks' , as: 'thanks'
  resources :rooms
  devise_for :users
  resources :users
  resources :visitors
  match '/contact' => 'visitors#contact', :via => :get
  match '/tours' => 'visitors#tours', :via => :get
  match '/about' => 'visitors#about', :via => :get
  root to: 'visitors#index'
end

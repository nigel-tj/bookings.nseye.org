Rails.application.routes.draw do
  


  get 'trip_scheduals/index'

  get 'trip_scheduals/new'

  get 'trips/index'

  get 'trips/new'

  get 'user_home_section/index'

  get 'booking/new'

  get 'booking/create'

  # mount Uploader::Engine => '/uploader'
  
  # The plan a trip routes 
  resources :trips
  resources :trips do 
    resources :trip_scheduals
  end
  
  # the guest house addition 
  resources :guesthouses
  
  resources :guesthouses do 
    resources :rooms
  end
  
  
  
  # the room photo gallery
  
  resources :rooms do 
    resources :photos, only: [:new, :create, :index , :destroy]
  end
  
  get 'admin_section/index'
  resources :photos, only: [:new, :create, :index , :destroy]
  
  
  
  resources :charges , only: [:new , :create]
  get 'thanks' , to: 'charges#thanks' , as: 'thanks'
  
  resources :booking
  # the booking resource with rooms
  resources :rooms do
    resources :booking
  end 
  resources :rooms
  devise_for :users
  resources :users
  resources :visitors
  match '/contact' => 'visitors#contact', :via => :get
  match '/tours' => 'visitors#tours', :via => :get
  match '/about' => 'visitors#about', :via => :get
  root to: 'visitors#index'
end

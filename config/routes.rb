Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope :api do 
    resources :hosts
    resources :listings
    resources :amenities
    resources :refugees
    resources :requests
    get '/host_profile', to: 'hosts#profile'
    get '/refugee_profile', to: 'refugees#profile'
    get '/login', to: 'sessions#login'
    get '/logout', to: 'sessions#logout'
  end
end

Rails.application.routes.draw do
  
  root 'welcome#index'
  devise_for :providers, path: 'providers', controllers: {registrations: "providers/registrations"}
  
  devise_scope :provider do
    get 'sign_up', to: 'providers/registrations#new'
  end
  

  devise_for :users, path: 'users', controllers: {registrations: "users/registrations"}

  devise_scope :user do
    get 'sign_up', to: 'users/registrations#new'
  end
  
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :listings do 
    resources :reviews
  end
  resources :providers 
  resources :users
  resources :bookings
  resources :cuisines
  resources :charges

  resources :places
end

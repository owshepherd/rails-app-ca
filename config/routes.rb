Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :providers, path: 'providers', controllers: {registrations: "providers/registrations"}
  
  devise_scope :provider do
    get 'sign_up', to: 'providers/registrations#new'
  end
  devise_for :users, path: 'users'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :listings
  resources :providers
  resources :users
  resources :bookings
  resources :cuisines
  resources :charges
end

Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :providers, path: 'providers'
  devise_for :users, path: 'users'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/listings", to: "listings#index", as: "listings"
  post "/listings", to: "listings#create"
  get "/listings/new", to: "listings#new", as: "new_listing"
  get "/listings/:id", to: "listings#show", as: "listing"
  resources :listing
end

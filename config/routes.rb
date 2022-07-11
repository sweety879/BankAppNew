Rails.application.routes.draw do
  devise_for :users
  get "/homepage", to:"home#homepage"
  get "/dashboard", to:"home#dashboard"
  resources :users
  resources :accounts
  resources :customers
  resources :bank_branches
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#homepage"
end

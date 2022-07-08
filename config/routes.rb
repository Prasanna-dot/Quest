Rails.application.routes.draw do
  root "home#index"
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  # resources :users
  match "/home", :to => "home#index", :via => :get

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get "signup", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  get "logout", to: "sessions#destroy", as: "logout"
  # get "home", to: "home/index", as: "home"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

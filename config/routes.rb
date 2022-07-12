Rails.application.routes.draw do
  get 'interview/html'
  root "home#index"
  match "/home", :to => "home#index", :via => :get
  match "/quiz", :to => "home#quiz", :via => :get
  match "/interview", :to => "home#interview", :via => :get
  match "/evaluation", :to => "home#evaluation", :via => :get

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get "signup", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  get "logout", to: "sessions#destroy", as: "logout"
end

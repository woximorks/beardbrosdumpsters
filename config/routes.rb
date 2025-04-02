Rails.application.routes.draw do
  get 'home/index'
  get 'dashboard/index'
  resources :videos
  resources :rentals
  resources :articles
  resources :pricing_cards
  resources :landing_cards
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/dashboard', to: 'dashboard#index', as: :dashboard

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "home#index"
end

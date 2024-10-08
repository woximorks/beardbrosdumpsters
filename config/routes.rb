Rails.application.routes.draw do
  resources :rented_dumpsters
  devise_for :users
  get 'pages/home'
  get 'pages/pricing'
  get 'pages/events'
  get 'pages/schedule'
  resources :site_vars
  resources :articles
  resources :about_cards
  resources :pricing_cards
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "pages#home"
end

AyurvedaApp::Application.routes.draw do
  resources :digestives
  resources :flavors
  resources :dosha_actions
  resources :properties
  resources :temperatures
  resources :post_flavors
  resources :pre_flavors
  resources :ingredients
  resources :food_groups
  resources :ailments

  root to: 'welcome#index'

  get '/about', to: 'welcome#index'

 end

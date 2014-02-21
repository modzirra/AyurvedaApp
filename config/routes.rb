AyurvedaApp::Application.routes.draw do
  resources :dosha_actions

  resources :properties

  resources :temperatures

  resources :post_flavors

  resources :pre_flavors

  resources :ingredients

  resources :food_groups

  resources :ailments

end

Tsc003::Application.routes.draw do
  
  get "about/index", :id => "about"
  match "about" => "about#index"


  resources :contact_forms


  get "terms/index", :id => "terms"
  match "terms" => "terms#index"

  get "privacy/index", :id => "privacy"
  match "privacy" => "privacy#index"

  get "startup_maps/index", :id => "startup_maps"
  match "startup_maps" => "startup_maps#index"

  match 'tagged' => 'user_profiles#tagged', :as => 'tagged'

  get "start/index", :id => "start"
  match "start" => "start#index"

  
  resources :business_profiles do
    member do
      post :join
      post :leave
      post :remove
    end
  end

  resources :profile_types

  get "admin/index", :id => "admin"
  match "admin" => "admin#index"

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users

  resources :user_profiles
end
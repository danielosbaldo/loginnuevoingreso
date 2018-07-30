Rails.application.routes.draw do
  devise_for :users
  root to: 'visitors#index'
  get 'home', to: 'application#index'
  resources :users
end

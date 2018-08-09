Rails.application.routes.draw do
  resources :resources
  devise_for :users
  root to: 'visitors#index'
  get 'home', to: 'application#index'
  resources :users
  resources :teachers
  get 'teachers/curp/:curp', to: 'teachers#showByCurp'
end

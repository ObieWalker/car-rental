Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :rentals
  resources :cars
  resources :users
  root 'cars#index'
end

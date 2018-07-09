Rails.application.routes.draw do
  resources :rentals
  resources :cars
  resources :users
  root 'users#index'
end

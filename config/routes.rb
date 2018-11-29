Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :rentals do
    member do
      patch :cancel
      put :cancel
      put :modify_status
    end
  end
  resources :cars
  resources :users
  root 'cars#index'
  put 'cancel', to: 'rentals#cancel'
  put 'modify_status', to: 'rentals#modify_status'
end

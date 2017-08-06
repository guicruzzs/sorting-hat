Rails.application.routes.draw do
  resources :tracks
  resources :invitations, except: [:show]
  devise_for :users
  root to: 'home#index'
end

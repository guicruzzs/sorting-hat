Rails.application.routes.draw do
  resources :invitations
  devise_for :users
  root to: 'home#index'
end

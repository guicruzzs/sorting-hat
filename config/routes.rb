Rails.application.routes.draw do
  root to: 'home#index'
  get :ranking, to: 'home#ranking'

  devise_for :users

  resources :invitations, except: [:show]

  resources :tracks, except: [:edit, :update] do
    collection do
      get :search_on_spotify
    end
  end

  resources :ratings, only: [:create]

end

Rails.application.routes.draw do
  root "home#index"
  get '/auth/spotify', as: :login
  get '/auth/spotify/callback', to: 'sessions#create'
  get '/logout', to: "sessions#destroy", as: :logout
  get '/about', to: "home#show", as: :about
  resources :playlists, only: [:new, :show]
  resources :users, only: [:show]
end

Rails.application.routes.draw do

  root 'galleries#index'

  resources :galleries
  resources :artworks
  resources :artists
  resources :reviews

  resources :users

  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end

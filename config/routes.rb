Rails.application.routes.draw do

  root 'movies#index'

  resources :movies
  resources :directors
  resources :actors
  resources :reviews

  resources :users

  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end

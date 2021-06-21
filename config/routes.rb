Rails.application.routes.draw do

  
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  
  get '/api', to: 'teams#getFromApi'
  resources :users, only: [:create, :show, :index]
  resources :teams
  resources :reviews
  resources :matches
  
 
end

Rails.application.routes.draw do
  
  root 'microposts#index'
  get '/signup',  to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users, except: :index
  resources :microposts
  resources :categories, only: :show
end

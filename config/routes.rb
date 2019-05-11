Rails.application.routes.draw do
  
  root 'microposts#index'
  get '/signup',  to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/search', to: 'microposts#search'
  resources :users, except: :index do
    member do
      get :option
    end 
  end
  resources :microposts do
    member do
      get :posted
    end
  end
  resources :categories, only: :show
  resources :likes, only: [:show, :create, :destroy]
end

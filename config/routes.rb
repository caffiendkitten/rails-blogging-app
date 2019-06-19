Rails.application.routes.draw do

  # resources :sessions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/sign_up', to: 'users#new'
  post '/sign_up', to: 'users#create'
  get '/', to: 'posts#index'
  resources :post_likes, only:[:new, :create, :destroy]
  resources :posts
  resources :users, only:[:new, :create, :edit, :update]
  resources :comments, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

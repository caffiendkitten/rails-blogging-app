Rails.application.routes.draw do

  # resources :sessions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/sign_up', to: 'users#new'
  post '/sign_up', to: 'users#create'
  get '/', to: 'posts#index'
  resources :posts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

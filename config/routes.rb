Rails.application.routes.draw do
  resources :homepage, only: [:index]

  root 'homepage#index'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'

  get 'rooms/show'

  resources :users, except: [:index] do
    resources :user_matches, only: [:create,:show,:destroy]
  end

  resources :conversations do
    resources :messages
  end

  mount ActionCable.server => '/cable'
end

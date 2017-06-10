Rails.application.routes.draw do
  resources :homepage, only: [:index]

  root 'homepage#index'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'

  get '/skills/search', to: 'skills#index'

  get 'rooms/show'

  resources :users, except: [:index]

  mount ActionCable.server => '/cable'
end

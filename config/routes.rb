Rails.application.routes.draw do
  resources :homepage, only: [:index]

  root 'homepage#index'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get '/logout',  to: 'sessions#destroy'


  get '/posts/search', to: 'posts#index'
  post '/posts', to: 'posts#create'

  resources :posts

  get 'rooms/show'

  resources :skills do
    resources :posts , except: [:index]
  end


  resources :posts, except: [:index] do
    resources :apprenticeships
  end

  resources :apprenticeships do
    resources :messages , only: [:index,:create]
  end

  resources :users, except: [:index]

  mount ActionCable.server => '/cable'
end

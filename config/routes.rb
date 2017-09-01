Rails.application.routes.draw do

  resources :movies, only: [:index, :show] do
    resources :favorites, only: [:new, :create, :destroy]
    resources :watchlists, only: [:new, :create, :destroy]
    resources :comments, only: [:new, :create, :destroy]
    collection do # Please leave the collection do here
      get 'search'
    end
  end

  resources :users, only: [:show]

  root 	'movies#index'

  get 		'login', to: 'sessions#new'
  post 		'login', to: 'sessions#create'
  delete  'logout', to: 'sessions#delete'

  # delete  'comments', to: 'comments#delete'
  # delete  'watchlists', to: 'watchlists#delete'
  # delete 	'favorites', to: 'favorites#delete'

  get 	'signup', to: 'users#new'
  post 	'signup', to: 'users#create'

  get 	'profile/:id', to: 'users#show'

end

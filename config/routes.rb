Rails.application.routes.draw do

  resources :movies do
    resources :comments
    collection do
      get 'search'
    end
  end

  resources :users, only: [:show]

  root 	'movies#index'


  get 		'login', to: 'sessions#new'
  post 		'login', to: 'sessions#create'
  delete 	'logout', to: 'sessions#delete'

  get 	'signup', to: 'users#new'
  post 	'signup', to: 'users#create'

  get 	'profile/:id', to: 'users#show'

end

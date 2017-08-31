Rails.application.routes.draw do

  root 	'movies#show'

  get 		'login', to: 'sessions#new'
  post 		'login', to: 'sessions#create'
  delete 	'logout', to: 'sessions#delete'

  get 	'signup', to: 'users#new'
  post 	'signup', to: 'users#create'

  get 	'profile/:id', to: 'users#show'

  resources :movies do
    resources :comments
  end
  
end

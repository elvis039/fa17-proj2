Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index', as: 'home'
  get	'movies/new', to: 'movies#new', as: 'movies_new'
  post	'movies/new', to: 'movies#create'
  get 	'movies/:id', to: 'movies#show', as: 'movie'
  post 	'reviews/:id', to: 'reviews#create', as: 'create_review'
  get 	'users/:id', to: 'users#show', as: 'users_show'


end

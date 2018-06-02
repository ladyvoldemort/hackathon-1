Rails.application.routes.draw do
  root "movies#index"
  devise_for :users

  get 'movie_form', to: 'movies#form'

  resources :movies
end
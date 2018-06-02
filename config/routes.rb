Rails.application.routes.draw do
root to: 'accounts#index'
devise_for :users

resources :accounts
end

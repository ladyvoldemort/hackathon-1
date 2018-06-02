Rails.application.routes.draw do
<<<<<<< HEAD
  
=======
root to: 'accounts#index'
devise_for :users

resources :accounts
>>>>>>> models update
end

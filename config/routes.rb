Rails.application.routes.draw do
  resources :home, only: [:index]
  resources :posts, only: [:show]

  root 'home#index'
end

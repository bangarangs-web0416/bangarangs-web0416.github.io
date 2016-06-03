Rails.application.routes.draw do
  resources :home, only: [:index]
  resources :posts, only: [:show]

  resources :authors, only: [:create] do
    resources :comments, only: [:create]
  end

  root 'home#index'
end

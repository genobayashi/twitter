Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  resources :top, only: [:index]
  resources :tweets, only: [:index, :create]
end

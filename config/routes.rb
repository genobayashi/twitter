Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  resources :follows, only: [:create, :destroy]
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :top, only: [:index]
  resources :tweets, only: [:index, :create]
  resources :categories, only: [:new, :create]
end

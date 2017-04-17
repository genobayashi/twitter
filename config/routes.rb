Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :top, only: [:index]
  resources :tweets, only: [:index, :create]
end

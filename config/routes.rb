Rails.application.routes.draw do
  devise_for :users
  # post '/users/sign_up', to:"application#new"
  # get 'prototypes/index'
  root to: "prototypes#index"
  resources :prototypes, only: [:create, :new, :show, :edit, :update, :destroy] do
    resources :comments, only: :create
  end
  resources :users, only: :show
  
end
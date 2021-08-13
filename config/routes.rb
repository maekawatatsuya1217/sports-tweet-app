Rails.application.routes.draw do
  devise_for :users
  root to: "tops#index"
  resources :users, only: [:show, :edit, :update] do
    member do
      get :following, :followers
     end
  end
  resources :tweets do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
  resources :relationships, only: [:create, :destroy]
  resources :messages, only: :index
end
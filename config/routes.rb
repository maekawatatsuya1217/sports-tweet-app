Rails.application.routes.draw do
  devise_for :users
  root to: "tops#index"
  resources :users, only: [:show, :edit, :update]
  resources :tweets do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
  resources :relationships, only: [:create, :destroy]
end

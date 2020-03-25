Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :index, :create, :update]
  resources :courses, only: [:index, :show] do
    resources :comments, only: [:index, :create, :update, :destroy]
    resources :answers, only: [:index, :create, :update, :destroy]
  end
  resources :rating, only: [:index, :show, :create, :update]
  resources :courses, only: [:update, :create]
end

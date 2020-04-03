Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show] do
    resources :ratings, only: [:show]
  end
  resources :progressions, only: [:index, :show] do
    post 'status' => 'progressions#status_update', as: :status_update
  end

  resources :order, only: [:create, :show]
end

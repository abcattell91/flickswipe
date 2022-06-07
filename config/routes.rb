Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :friendships, only: [:index]
  resources :contents, only: [:index] do
    resources :user_contents, only: [ :create ]
  end
  resources :matches, only: [:show]
end

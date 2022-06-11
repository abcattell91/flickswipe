Rails.application.routes.draw do
  devise_for :users, :path_prefix => 'd'
    resources :users, :only =>[:show, :index]
  root to: 'pages#home'

  # routes 2.0
  resources :users do
    resources :friendships, only: [:index] do
      resources :contents, only: [:index] do
        resources :user_contents, only: [:create]
      end
    end
  end

  get "contact_contents/:contact_id", to: "user_contents#contact_rated_content_as_json"
end

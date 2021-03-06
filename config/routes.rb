Rails.application.routes.draw do

  root to: 'users#index'
  devise_for :users, :path_prefix => 'd'
   resources :users, :only =>[:show, :index] do
    resources :friendships, only: [:index, :create, :show] do
      resources :contents, only: [:index, :show] do
        resources :user_contents, only: [:create]
      end
    end
  end

  get "contact_contents/:contact_id", to: "user_contents#contact_rated_content_as_json"
end

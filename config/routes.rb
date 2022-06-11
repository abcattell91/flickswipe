Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :friendships, only: [:index]
  # resources :contents, only: [:index] do
  #   # contents to be nested in friendships?
  #   # this way once we thumbs up we can link to the 'create' method of matches
  #   # also need to nest matches create in friendships
  #   # once we create a match we need the friendship_id which is why it needs to be nested
  #   # now we go to the matches controller where we can check if our friend liked the same content
  #   # if they have we create the match
  #   resources :user_contents, only: [ :create ]
  # end

  # routes 2.0
  resources :users do
    resources :friendships, only: [:index] do
      resources :contents, only: [:index] do
        resources :user_contents, only: [:create]
      end
    end
  end
  # resources :matches, only: [:index, :show]

  # user_contents does not need to be nested within friendships
  # only need content_id to create user_content
end
